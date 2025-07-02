import os
import json


# You can expand this with more fake data later
MOCK_RESPONSES = {
    "leaf_spot.jpg": {
        "labels": ["leaf", "spot", "brown"],
        "diagnosis": "Possible Leaf Spot Disease"
    },
    "healthy_leaf.jpg": {
        "labels": ["leaf", "green"],
        "diagnosis": "Healthy Leaf"
    },
    "unknown.jpg": {
        "labels": [],
        "diagnosis": "No clear diagnosis available"
    }
}


def get_image_mock_response(image_path):
    """Fallback mock data based on image name."""
    filename = os.path.basename(image_path)
    print(f"[Mock Handler] Received image: {filename}")
    
    if filename in MOCK_RESPONSES:
        print("[Mock Handler] Returning mock response.")
        return MOCK_RESPONSES[filename]
    else:
        print("[Mock Handler] Unknown image, returning default.")
        return {
            "labels": [],
            "diagnosis": "Unknown image - no mock data available"
        }


# === Quick test code ===
if __name__ == "__main__":
    test_image_path = "/Users/anunayaryan/Desktop/leaf_spot.jpg"  # change the pth name
    response = get_image_mock_response(test_image_path)
    print(json.dumps(response, indent=2))
