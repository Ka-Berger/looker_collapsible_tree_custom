# looker_collapsible_chart_custom

## Settings
- install npm

#### To develop with local server
- install python
- install pyhttps
- and `export PATH="/Users/your_username/Library/Python/3.8/bin:$PATH"`

## Let's go to work
To finish your installation of your repo
- run `yarn && rm node_modules/ && npm i`

To compile your code
- `npm run build` to compile the code


# Add in Looker

Files you need in your repo at the root for Looker when you will use your repo GitHub
- **your_file.js** : The minified distribution file of this visualization.
- **LICENSE** : Looker marketplace content license file (this one is not required for it to work, but better to have it when it is finished if you want to post on the marketplace)
- **manifest.lkml** : Le fichier de configuration des dépendances externes de Looker. L'objet de la visualisation est défini ici
```
 VIS_LABEL.value : the name of your viz
 VIS_ID.value: an unique id for your viz
```
- **marketplace.json** :  A JSON file containing information that the marketplace installer uses to configure this project.
```
"label": you can use the same name as your LABEL.value or another name. Be explicite
"category_label": here it's `Plug-in`
"branding":
 "image_uri": the url of your icon viz (if you have it or empty string `""`
 "tagline": a simple description of your viz and viz functions.
"constants": {
 "VIS_LABEL":
  "label": you can use the same as LABEL.value (or not)
  "description": "This label will appear in the visualization selector in the Looker Explore UI."
 "VIS_ID":
  "label":you can use the same as VIS_ID (or not)
  "description": "This must be a unique ID across all visualizations.",
  "value_constraint": "visualization"
```

## Dev local

Go in your folder, where you can find your minified code JS.
- Launch the command `pyhttps`
- You will see : `Server running... https://localhost:4443` (your server is running - do not forget to stop your server when you stop to work)
- Go to Looker, (you need admin rights)
- Admin -> Visualization
- Here, click on `Add Visualization`
- Give an unique and explicite ID
- Give an explicite label to your visualization. The name to find your viz in the list after. Start the name with `DEV ONLY`to specify this viz is not available.
- In the main, paste the url of your localhost with the path to your minifed code JS. Like : `https://localhost:4443/dist/collapsible_custom.js` and Save.


## From Github

- Open a webpage with your github project
- Go to Looker (need admin rights)
- Click on **Marketplace icon**, and click on **manage**
- Click on three points icon on the right, then **add from github**
- Add the url of your github repository ending with `.git`
- In the SHA input : you can field `main` or the Sha of your versionning
- Save (it can be take few minutes)
- It asks you to valid the name of your viz to Complete installation., click on OK
- After few minutes, if all it's ok, your viz is available.
