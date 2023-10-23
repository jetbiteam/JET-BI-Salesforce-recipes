# Drag-&-Drop Sorting Table
Contains a component that let's you arrange table items using Drag-&-Drop (dnd further) API. Convenience is associated with dnd feature that allows to move items up and down in the table elegantly setting their relative position and sort order, instead of writing it manually on each item's record.

## Technologies
This component is built on Lightning Web Component JavaScript framework (LWC further).

## Use cases
You can invent your own, but the general examples are:
* Arranging Accounts by priority,
* Arranging Quote Line Items for the Quote, etc...

## Launch
You can embed the component into your business flow and launch it from another:
* AURA component
* LWC
* Screen Flow
The component includes 3 inputs:
* records - SObject records to arrange
* displayField - API Name of the field the value of which is used as the table-item display name
* sortingField - API Name of the field where the sorting value is stored, must be of type Integer    
	
## Setup
To run this project on a scratch org:

```
git clone ... // download the project
sfdx org:login:web --alias YOUR_DEVHUB --set-default-dev-hub
sfdx force:org:create -f config/project-scratch-def.json -a DND-TEST-SCRATCH -d 30 --wait 10
sfdx force:source:push
sfdx org:open
```