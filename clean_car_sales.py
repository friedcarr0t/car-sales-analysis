import pandas as pd

def clean_and_normalize_car_sales(input_file, output_file):
    """
    Clean and normalize car sales data for SQL analysis.
    
    Steps:
    1. Read the CSV file
    2. Handle missing values
    3. Fix encoding issues
    4. Normalize column names (lowercase, underscores)
    5. Standardize data types
    6. Remove trailing spaces
    7. Save cleaned data
    """
    df = pd.read_csv(input_file)
    
    print(f"Original shape: {df.shape}")
    print(f"Original columns: {list(df.columns)}")
    
    # Step 1: Drop rows with missing Customer Name
    initial_count = len(df)
    df = df.dropna(subset=['Customer Name'])
    dropped_count = initial_count - len(df)
    print(f"Dropped {dropped_count} row(s) with missing Customer Name")
    
    # Step 2: Fix encoding issue in Engine column (remove Â character and non-breaking spaces)
    df['Engine'] = df['Engine'].str.replace('Â', '', regex=False)
    df['Engine'] = df['Engine'].str.replace('\xa0', ' ', regex=False)  # Replace non-breaking space with regular space
    df['Engine'] = df['Engine'].str.strip()  # Remove leading/trailing whitespace
    
    # Step 3: Normalize column names (lowercase, replace spaces/special chars with underscores)
    column_mapping = {
        'Car_id': 'car_id',
        'Date': 'sale_date',
        'Customer Name': 'customer_name',
        'Gender': 'gender',
        'Annual Income': 'annual_income',
        'Dealer_Name': 'dealer_name',
        'Company': 'company',
        'Model': 'model',
        'Engine': 'engine',
        'Transmission': 'transmission',
        'Color': 'color',
        'Price ($)': 'price_dollars',
        'Dealer_No ': 'dealer_no',  # Note: has trailing space in original
        'Body Style': 'body_style',
        'Phone': 'phone',
        'Dealer_Region': 'dealer_region'
    }
    df = df.rename(columns=column_mapping)
    
    # Convert Date to datetime
    df['sale_date'] = pd.to_datetime(df['sale_date'], errors='coerce')
    
    # Convert Phone to string and remove any decimal points if present
    df['phone'] = df['phone'].astype(str).str.replace('.0', '', regex=False)
    df['phone'] = df['phone'].str.strip()
    
    # Ensure numeric columns are proper numeric types
    df['annual_income'] = pd.to_numeric(df['annual_income'], errors='coerce')
    df['price_dollars'] = pd.to_numeric(df['price_dollars'], errors='coerce')
    
    # Step 5: Clean text columns (remove leading/trailing whitespace)
    text_columns = ['car_id', 'customer_name', 'gender', 'dealer_name', 'company', 
                   'model', 'engine', 'transmission', 'color', 'dealer_no', 
                   'body_style', 'dealer_region']
    
    for col in text_columns:
        if col in df.columns:
            df[col] = df[col].astype(str).str.strip()
            # Replace any 'nan' strings with actual NaN
            df[col] = df[col].replace('nan', None)
    
    # Step 6: Remove duplicates if any
    duplicates = df.duplicated().sum()
    if duplicates > 0:
        print(f"Found {duplicates} duplicate rows. Removing...")
        df = df.drop_duplicates()
    else:
        print("No duplicates found.")
    
    # Step 7: Final data validation
    print(f"Final shape: {df.shape}")
    print(f"\nData types:")
    print(df.dtypes)
    print(f"\nMissing values:")
    print(df.isnull().sum())
    
    # Step 8: Save cleaned data
    print(f"\nSaving cleaned data to {output_file}...")
    df.to_csv(output_file, index=False, encoding='utf-8')
    
    print(f"Output file: {output_file}")
    print(f"Total rows: {len(df)}")
    print(f"Total columns: {len(df.columns)}")
    
    return df

if __name__ == "__main__":
    input_file = 'carSales.csv'
    output_file = 'carSales_cleaned.csv'
    
    df_cleaned = clean_and_normalize_car_sales(input_file, output_file)
