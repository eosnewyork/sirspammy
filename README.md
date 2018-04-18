# sirspammy
bash scripts to spam transactions at eos node

method:  
* go through process [here](https://github.com/EOSIO/eos/blob/dawn-v3.0.0/TUTORIAL.md) to stand up BP, create users, create token contract, issue tokens
* spin up x machines - aws ec2 t2.small (1 core / 2gb RAM)
* install deb package on each
* copy wallet file from spammy1
* execute sirspamalot.sh on each machine
* tail stderr on BP to see txns per block.


prelim results

- 1x spammer: ~100 tps
- 2x spammer: ~190 tps
- 3x spammer: ~250 tps
- 4x spammer: ~330 tps


using sirspamalot with 6x per on 4 machines (24 procs):

~ 450 tps

using sirspamalot with 6x per on 6 machines (36 procs):
 
~ 600 tps
