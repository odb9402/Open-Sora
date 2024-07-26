export PYTHONPATH=$PYTHONPATH:~/Open-Sora-Plan

python opensora/sample/sample_t2v.py \
    --model_path LanguageBind/Open-Sora-Plan-v1.1.0 \
    --version 65x512x512 \
    --num_frames 16 \
    --height 512 \
    --width 512 \
    --cache_dir "/moai/cache" \
    --text_encoder_name DeepFloyd/t5-v1_1-xxl \
    --text_prompt examples/prompt_list_0.txt \
    --ae CausalVAEModel_4x8x8 \
    --ae_path "/remote-home1/yeyang/CausalVAEModel_4x8x8" \
    --save_img_path "./sample_video_65x512x512" \
    --fps 24 \
    --guidance_scale 7.5 \
    --num_sampling_steps 150 \
    --enable_tiling

    #--model_path "/moai/model/65x512x512_10node_bs2_lr2e-5_4img/checkpoint-1000" \