# Activate the Conda environment
source activate ds-env

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_MAIL

alias docker='sudo docker'

# Print information
echo ""
echo ""
echo ""
echo "To start a Jupyter notebook server, run ..."
echo "-----------------------------------------------------------------"
echo "jupyter lab --allow-root --no-browser --ip 0.0.0.0 &> /dev/null &"
echo "jupyter notebook list"
echo ""
echo "Configure git. Run ..."
echo "-----------------------------------------------------------------"
echo "git config --global user.email 'you@example.com'"
echo "git config --global user.name 'Your Name'"
echo ""
echo ""
echo ""
