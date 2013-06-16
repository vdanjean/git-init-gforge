
declare_forge \
  --hostname shell.gforge.inria.fr \
  --desc "GForge Inria" \
  --prio 20 \
  --projectsgitroot /gitroot \
  -- \
    --project memo \
    --desc "Memo (accès réservé aux membres du bâtiment de Montbonnot)" \
    --prio 20 \
  -- \
    --project moais \
    --desc "Moais (accès réservé aux membres de Moais + invités)" \
    --prio 30 \
  -- \
    --project mescal \
    --desc "Mescal (accès réservé aux membres de Mescal + invités)" \
    --prio 30


