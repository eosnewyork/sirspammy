# sirspammy
bash scripts to spam transactions at eos node

method:  
* spin up 4x machines - aws ec2 t2.small (1 core / 2gb RAM)
* install deb package on each
* create wallet
* import priv key
* execute spammy with same xfer to/from


prelim results

1x spammer: ~100 tps
2x spammer: ~190 tps
3x spammer: ~250 tps
4x spammer: ~330 tps


using sirspamalot with 6x per on 4x machines (24 procs):
~ 450 tps
