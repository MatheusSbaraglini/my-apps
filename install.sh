if ! [ -x /usr/bin/ansible ]; then
  echo "Installing ansible..."
  sudo apt-get -y install ansible
fi

if ! [ -x /usr/bin/snap ]; then
  echo "Installing snap"
  sudo apt-get -y install snapd
fi

ansible-playbook ./ansible/apps.yml --ask-pass