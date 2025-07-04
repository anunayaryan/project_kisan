import os
import json

class MockImageDiagnosisTool:
    def __init__(self):
        print("[Mock Handler] Initialized")

    def diagnose_image(self, image_path):
        if not os.path.exists(image_path):
            return {"error": f"Image not found at {image_path}"}

        print(f"[Mock Handler] Received image: {image_path}")
        print("[Mock Handler] Returning mock response.")
        return {
            "labels": ["leaf", "spot", "brown"],
            "diagnosis": "Possible Leaf Spot Disease"
        }

if __name__ == "__main__":
    tool = MockImageDiagnosisTool()
    image_path = "leaf_spot.jpg"  # Replace with your actual image path
    result = tool.diagnose_image(image_path)
    print(json.dumps(result, indent=2))
