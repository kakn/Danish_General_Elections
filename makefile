pushAllChanges:
	git add .
	git commit -m "$m"
	git push

updateFeatureBranch:
	git checkout master
	git fetch -p origin
	git merge origin/master
	git checkout $b
	git merge master
	git push origin $b