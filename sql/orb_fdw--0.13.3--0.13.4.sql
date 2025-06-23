-- Change amount column type from text to numeric in orb_invoices table
DROP FOREIGN TABLE orb_invoices;

create foreign table orb_invoices (
  customer_id text,
  subscription_id text,
  organization_id text,
  status text,
  due_date text,
  amount numeric
)
server my_orb_server
options (
  object 'invoices'
);