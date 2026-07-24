# Question 5 - Recovery Mechanisms in vi

## 1. Swap Files (.swp)

Swap files are automatically created while editing a file. If the editor or system crashes before saving, Vim can recover unsaved changes using:

```bash
vim -r filename
```

---

## 2. Undo History

Undo history allows recently made changes to be reversed using the `u` command. If persistent undo is enabled, changes can also be recovered after reopening the file.

---

## 3. Registers

Registers store copied and deleted text. They can be viewed using:

```vim
:registers
```

and used to recover accidentally deleted content.

---

## 4. Backup Files

When backup mode is enabled (`:set backup`), Vim creates a backup copy of the file before saving changes. This helps restore the previously saved version.

---

## 5. Auto-Recovery

If Vim detects a swap file after a crash, it automatically offers recovery when reopening the file. You can also manually recover using:

```bash
vim -r filename
```

---

# Most Reliable Recovery Strategy

The most reliable strategy is to use **swap files together with backup files**.

### Justification

- Swap files preserve unsaved changes after crashes.
- Backup files preserve the last saved version.
- Auto-recovery restores the latest edits.
- Using both mechanisms minimizes the risk of data loss and provides multiple recovery options.
