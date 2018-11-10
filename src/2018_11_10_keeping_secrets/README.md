## Getting Started

To run this presentation, you will need two side-by-side bash terminals
and a running docker agent. In the left terminal, please run

```bash
make run-jenkins
```

In the right terminal, please run
```bash
make run-dottie
```

Once the container is running, you can type any keys to view the presentation
in action. At the end of each line, you'll have to hit the reutrn key
to advance the presentation. Whenever you encouter either a `>>>` or a `<<<`, it is a prompt to switch
to the other window.

Once you are done with the presentation, please run
```bash
make clean-all
```
