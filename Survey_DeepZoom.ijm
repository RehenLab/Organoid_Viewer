// Get a list of all image titles
imageTitles = getList("image.titles");

for (i = 0; i < imageTitles.length; i++) {
    // Select image by title
    selectImage(imageTitles[i]);
    title = getTitle();
    
    // Split the title into organoid and focus parts
    splitTitle = split(title, " ");
    
    if (splitTitle.length == 2) {
        organoid = splitTitle[0]; // "Organoid_1"
        focustif = splitTitle[1];    // "focus_1.tif"
        focus = substring(focustif,0,lastIndexOf(focustif, "."));
        // Construct the output path using organoid
        outputPath = "E:/Pedro/images/" + organoid;
        
        // Ensure the directory exists (create if needed)
        File.makeDirectory(outputPath);
        
        // Run the Deep Zoom plugin with the correct paths
        run("Deep Zoom...", "output=" + outputPath + " html=" + focus + " html_0=" + focus + " image=640 image_0=480 url=[] implementation=CHAINED");
        close();
    }
}