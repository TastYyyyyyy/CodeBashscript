read -p "username: " user
read -p "ssh_key:" key
sudo adduser -m $user
cd ~/.ssh/
rm -rf tmp_rsa* 
touch key_rsa.pub | echo "$key" >> key_rsa.pub
echo "#key_rsa" >> ~huy/.ssh/authorized_keys 
cat key_rsa.pub >> ~huy/.ssh/authorized_keys 
cat authorized_keys/
echo ">>> Done"
