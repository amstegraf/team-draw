import json

# Load data from JSON file
def load_data(filename='players/players.json'):
    with open(filename, 'r') as f:
        data = json.load(f)
    return data

# Save data to JSON file
def save_data(data, filename='players/players.json'):
    with open(filename, 'w') as f:
        json.dump(data, f, indent=4, ensure_ascii=False)
