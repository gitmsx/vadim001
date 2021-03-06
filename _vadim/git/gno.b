Git happens! 6 �������� ������ Git � ��� �� ���������
https://about.gitlab.com/2018/08/08/git-happens/
���� �������� �����,
Git,
������� ���������� ��������
�������


����. �����.: �� ���� � ����� ��� ��������� �������� ���� ������� GitLab ��������� ���������, �� ������ �������� ������� � ������������, ������� �������� ��������� ����� � ����� � ������ ��������� �������, ����������� �� ���� ������ � Git. ���� �� ��� ����� ���� ��� ������� �������������, �� ����������� �������� � ��, ���� ��� ����������. � � ����� ����� ��������� �� �������� ��������� ����� �� ����. ������� ���� �������!

��� �� ������ ������, �������� ��� ������ � ������ �������� ���������, ��� Git. �� �������: Git happens!

���� �� ������ ��������� ���� � Git, ��������� ������� ������ � ��� � ��������� ������. � ����� � �������� � ���, ��� ����� ��������� ����� �������� ���������������� ������ � Git.

1. ��� � ������ � ��������� � ���������� �������

����� ���������� ����� ������� ����� ��������� ������ � ��������� �������. � �������, ��� ����� ���������:

git commit --amend

� ���� �������� ��������� ��������� �������� � �������� ������ ��������� � ��������� � ���������� �������. � ����� �� ������, ��� �� �������� �addded� � ����� �d�.

2. ��� � ����� �������� ���� � ���������� �������

������ ���������� ������ � Git � ������� ��������� ������. �� ������ �������� ����, ������ ��� ��������� ��� ������ ������ ��������� ���������, ����� ������ ���� �����������? ����� ������ ����� ����� --amend.

�������� ����������� ���� � ��������� ��� ������ �������:

git add missed-file.txt
git commit --amend

������ �� ������ ���� ���������������� ���������, ���� ������ ��������� ��� � ������� ���� (� ����������� ������).

3. ��� � ������� ����, ������� �� ������ ���� � ���� �����������

�� ���, ���� � ��� �������� ��������? ���, ���� �� �������� ����, ������� �� ������ ���������? ���������� ENV-����, ���������� ������ ��� ���� � �����, ��� ���� �������� ��������� � ������������ �������� �� �������.

���� �� ������� ������ stage ��� ����� � ��� �� ���������� ���, �� �������� ����� ������� reset ������� ����� (������������ � stage):

git reset /assets/img/misty-and-pepper.jpg

���� �� �� ��-���� ���������� ���������, ����������� �������������� ��������������� ���:

git reset --soft HEAD~1
git reset /assets/img/misty-and-pepper.jpg
rm /assets/img/misty-and-pepper.jpg
git commit

������ ����� �������, �������� �������, � ����� ������ ����� ������.

����. �����.: ��� �������� � ������������ � ������������ ������, ��� �������� ���� ����� ������ � ������� ��� ����������� --amend. �� ���� ���������, ������ ������� ����� ����� ��������, ����� ��� ���� ������� ��������� ������� �������� ��� ����������� ������.

4. ��� � ��������� ��������� � master

����, �� ��������� ��� ����� ����� � ���������, ����� ������� ����� ����� ��� ��. �� ��� ���������� ���� ������ � ��� ��� ������� ��������� � master'�. � �������, GitLab ����� ������������� push'� ����� � master. ������� �� ����� �������� ��� ������ ��������� � ����� ����� ���������� ����� ���������:

����������: ���������, ��� ������� ���������� ��� stash'���� ���� ��������� � ����� ��� ��� ����� �������!

git branch future-brunch
git reset HEAD~ --hard
git checkout future-brunch

����� ������� ����� �����, � master'� � ��������� ����� �� ���������, � ������� �� ��� �� ����� ���������, � ����� ������ checkout ����� ����� �� ����� ������ �����������.

5. ��� � ������ ������ � �������� �����

����� ������������ ����� �������� � ���������� ������� ������ � �������� �����. ��� ����� 15:00, � � �� ��� �� ������, ������� ��� ����� ������ ����� ����� (branch) ��� future-brunch. ����������!



����������� ��� ����� ����������� ��������, ��� ������������ ��� �������������� ����� � ������� ������� mv, �� ���� �������� � � ����� ����� � ���������� ���������:

git branch -m future-brunch feature-branch

���� �� ��� push'���� ��� �����, ����������� ���� �������������� �����. �� ������ ������ ����� �� remote � push'��� �����:

git push origin --delete future-brunch
git push origin feature-branch

����. �����.: ������� ����� �� remote ��� ����� � �������:

git push origin :future-brunch

6. Oops� I did it again!

��������� ������� �� ��� ������, ����� �� ����� �� ���. ����� �� ������������ � ����������� ���� ������� �� Stack Overflow, ����� ���� � ����������� �� ����� ��� ����, ��� ���� � ������. ��� �� ������� ������������ � ��������

git reflog ���������� ������ ���� ����������� ���� ��������. ����� �� ��������� ������������ ���������� ����������� Git'� �� ����������� �� �������, �.�. ��������� � ������ ������� �� ��������. ������ ��������, ��� ��� ���� ��������� ������� � �� ����� ��������� � ��� � ������� �������. ����, ����� �������� ������, ���������:

git reflog

������ ��� ��� ��������� ��� ������ ����������� Git'�. ������ ������� �� ������� ���� ����� ���������:

3ff8691 (HEAD -> feature-branch) HEAD@{0}: Branch: renamed refs/heads/future-brunch to refs/heads/feature-branch
3ff8691 (HEAD -> feature-branch) HEAD@{2}: checkout: moving from master to future-brunch
2b7e508 (master) HEAD@{3}: reset: moving to HEAD~
3ff8691 (HEAD -> feature-branch) HEAD@{4}: commit: Adds the client logo
2b7e508 (master) HEAD@{5}: reset: moving to HEAD~1
37a632d HEAD@{6}: commit: Adds the client logo to the project
2b7e508 (master) HEAD@{7}: reset: moving to HEAD
2b7e508 (master) HEAD@{8}: commit (amend): Added contributing info to the site
dfa27a2 HEAD@{9}: reset: moving to HEAD
dfa27a2 HEAD@{10}: commit (amend): Added contributing info to the site
700d0b5 HEAD@{11}: commit: Addded contributing info to the site
efba795 HEAD@{12}: commit (initial): Initial commit

�������� �������� �� ����� ����� ������� � ��� ������. ���� �� ������ ��������� � ������ ������� � �������, ��������� ��������� �������, ������� {index} �� ��������������� �������� (��������, dfa27a2):

git reset HEAD@{index}

����, ������ � ��� ���� ����� �������� ��������� �� ����� ������ Gitfalls (���� ����: pitfall ����������� ��� ��������, ������ � ����. �����.).

����� �� �����������

��-������, ������ ��������� �� ����� ����������� ���� (����� ������ 5). ����� ���������, ��� ��� �������� ������ ������� ��������, ������� �� ������� ���������, ������ ���� ��������� �� ���� ���������� � remote (push'����). � ��������� ������ ������ ������ ������ ��� ����� �� remote-����� � ������� ���� ��������� git pull (������� ������� merge, � ����� ������� ����������� ������� ������� � ������ ������������), ���� git push --force, ��� ������� ������� ������ ��� ������ � ������ ���������� �������



������ � ��������� �������� ���������� �� ������ �����:

���� �� (�������� ��� ���) ������� ����� � ��� ����� ��������� �� ����������, ����� ������� ������ � ������������ git checkout -.
���� �� �������� �������� � ������� ����, ������� �� ������ ���� ���� ��������, �� ��� �� ������� ������ � ����������� git reset HEAD path/to/file. ������� �������� ������� � ������ 3, �� � ���������������� ��� ����, �.�. ��������� � ����� �������� ���������� � ������� (�� ������ � ������ ������� �����).
������� ���������, ����� �� ����������� �������, �������� ������������� ��������� -p ��� ���������� ����� � ������� (git add -p). ��� ��������� ������� review ������� ���������, ������� ���� � ������. �� ����� �������, ��� �� �� ��������� � ������� untracked-����� � �� ����� ��������� ��� ����� ���������.
��� ������� ������������ (� ��� ����� � ����� �������), ����� ����� � ������ 2014 ���� �Git Tutorial: 10 Common Git Problems and How to Fix Them�. � ���������, �������� �������� �� ������������� git revert � git rebase -i.

P.S. �� �����������

������� ����� � ����� �����:

�GitLab CI ��� ����������� ���������� � �������� � production�: ����� 1 (��� ��������); ����� 2 (����������� ���������);
������� �������� CI/CD � Kubernetes � GitLab (����� � ����� �������)�;
������� �������� � GitLab CI: ���� .gitlab-ci.yml ��� ����� ����������.
����:
Git