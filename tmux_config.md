bind -n C-K resize-pane -U 10
bind -n C-j resize-pane -D 10
bind -n C-h resize-pane -L 10
bind -n C-l resize-pane -R 10

setw -g mode-keys vi

bind -T copy-mode-vi v send -X begin-selection
bind -T copy-mode-vi y send -X copy-selection-and-cancel

