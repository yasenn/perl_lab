# Scenario 1:

Multi-level folder structure has multiple files with names length exceeding 32 characters. And
folder names have spaces. Now build a script to rename all the files present to reduce the filename length
less than 32 characters(including extension). No special characters should be present in new file names.
new filenames must be unique.

# Example input:
    /Folder one/Folder Two/The_Ulimate_guide-for-bash-scripting-guide-version1.txt
    /Folder one/Folder Two/The_Ulimate_guide_&_ba$h-scripting-guide-ver$ion1.txt
    /Folder one/Folder Two/TheUlimateguidefor_bashscriptingguideversion1.txt
