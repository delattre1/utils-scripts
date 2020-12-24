
for file in ./**/*
do
	if [[ $file == *index.html ]]
	then 
		#sed -i 's/index/..\/index.html/g' $file

		#sed -i 's/..\/index.html.html/..\/index.html/g' $file

		sed -i 's/..\/fale-conosco-contato/..\/category\/fale-conosco-contato/g' $file
	fi
done
