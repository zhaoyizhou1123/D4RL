for env in 'halfcheetah' 'hopper' 'walker2d'
do
    pkl="./snapshots/${env}/params.pkl"
    out_dir="./dataset/${env}"
    mkdir -p out_dir
    out="${out_dir}//output.hdf5"
    python scripts/generation/mujoco/collect_data.py "${env}-medium-v2" --num_data=10000 --output_file=${out} --pklfile=${pkl}
done