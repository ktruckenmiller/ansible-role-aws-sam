rel_dir=tests
test: bring_lambda_up


bring_lambda_up:
	mkdir -p $(rel_dir)/roles/aws-sam
	rsync -a --exclude $(rel_dir) . $(rel_dir)/roles/aws-sam/
	ansible-playbook -i ansible_connection=localhost $(rel_dir)/test.yml -vvv
