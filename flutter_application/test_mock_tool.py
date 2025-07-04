from mock_image_tool import MockImageDiagnosisTool
import json

# Provide the full path to your image
test_image_path = "/Users/anunayaryan/Desktop/leaf_spot.jpg"

tool = MockImageDiagnosisTool()
result = tool.diagnose_image(test_image_path)
print(json.dumps(result, indent=2))