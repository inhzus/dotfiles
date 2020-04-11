function pip_upgrade_all
pip list --format=freeze | awk -F'=' '{ print  }' | xargs -n1 proxychains4 -q pip install --user -U
end
