import json
import subprocess

result = subprocess.run(["terraform", "output", "-json", "state_infrastructure_outputs"], capture_output=True, text=True)
outputs = json.loads(result.stdout)

inventory = "[all]\n"
for state, data in outputs.items():
    # Precisamos do IP público. Como removemos o local-exec anterior, vamos buscá-lo via AWS CLI rapidamente se necessário, ou usamos um comando direto.
    pass
