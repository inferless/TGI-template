# Importing any model with TGI on Inferless Using and Dockerfile

This guide demonstrates how to import a Llama-2 model to the Inferless platform. We'll use Text Generation Inference (TGI) and import through Dockerfile for this process.

## Quick Start
Here is a quick guide to help you get started and running Llama-2 using TGI on Inferless.

### Fork the Repository
Get started by forking the repository. You can do this by clicking on the fork button in the top right corner of the repository page.

This will create a copy of the repository in your own GitHub account, allowing you to make changes and customize it according to your needs.

### Import the Model in Inferless
Log in to your inferless account, select the workspace you want the model to be imported into and click the Add Model button.

In the providers list, select `Dockerfile` as the provider. Then, enter the URL of your forked repository in the `Choose GitHub Repository` section and Select the `Branch`.

Enter the `Health API`

```
/health
```

Enter the `Infer API`
```
/generate
```

Enter the `Port`
```
8080
```

Enter the `Docker File path`
```
/Dockerfile
```

Then choose the type of machine, and specify the minimum and maximum number of replicas for deploying your model.

Please note that you need to enter the Hugging face access token as `HF_TOKEN` in the `Environment Variables` section.
Get your Hugging face access token from [here](https://huggingface.co/settings/tokens).


```
KEY HF_TOKEN=<YOUR_HUGGINGFACE_ACCESS_TOKEN>
KEY NUM_SHARD=1
KEY MAX_INPUT_LENGTH=2048
KEY MAX_TOTAL_TOKENS=4096
KEY MODEL_ID="meta-llama/Llama-2-7b-chat-hf"

```
Once you click `Continue`, you will be able to review the details added for the model. If you would like to make any changes, you can go back and make the changes.

Once you have reviewed everything, click Deploy to start the model import process.

Sample Inference 

```
{
  "inputs": "What is Deep Learning?",
  "parameters": {
    "max_new_tokens": 200
  }
}
```

