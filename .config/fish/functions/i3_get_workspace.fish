function i3_get_workspace
set ws (python -c "import json; print(next(filter(lambda x: x['focused'], json.loads('"(i3-msg -t get_workspaces )"')))['num'])")
return $ws
end
