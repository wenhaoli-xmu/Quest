cd evaluation/pg19

MODELPATH=meta-llama/Llama-2-7b-hf
OUTPUT_DIR=results/ppl_eval/longchat
mkdir -p $OUTPUT_DIR

device=0
budget=4096

CUDA_VISIBLE_DEVICES=1 python -u ppl_eval.py \
    --model_name_or_path $MODELPATH \
    --output_dir $OUTPUT_DIR \
    --num_eval_tokens 30000 \
    --quest --token_budget $budget --chunk_size 16 