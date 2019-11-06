sfdx force:org:create -f config/project-scratch-def.json -d 7 -s -w 60

sfdx force:source:push
sfdx force:user:permset:assign -n electron

sfdx force:apex:execute -f force-app/main/default/classes/FlowDemoStartUpScript.cls

sfdx shane:theme:activate -n Electron
sfdx force:org:open -p lightning/page/home
sfdx shane:user:password:set -g User -l User -p dreamforce2019

