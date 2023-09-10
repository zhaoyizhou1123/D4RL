# 'halfcheetah' 'hopper' 'walker2d'

# for env in 'walker2d'
# do
#     pkl="./snapshots/${env}/params.pkl"
#     out_dir="./dataset/${env}"
#     mkdir -p out_dir
#     out="${out_dir}//output.hdf5"
#     python scripts/generation/mujoco/collect_data.py "${env}-medium-v2" --num_data=10000 --output_file=${out} --pklfile=${pkl} \
#         --render
# done

for env in 'halfcheetah'
do
    pkl="./snapshots/${env}/params.pkl"
    out_dir="./dataset/${env}"
    mkdir -p ${out_dir}
    out="${out_dir}/output.hdf5"
    python scripts/generation/mujoco/collect_data_v2.py "${env}-medium-v2" --num_data=1000000 --output_file=${out} --pklfile=${pkl} \
        --period 100 
        # --render
done