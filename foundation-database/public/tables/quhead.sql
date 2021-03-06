SELECT xt.create_table('quhead', 'public');

ALTER TABLE public.quhead DISABLE TRIGGER ALL;

SELECT
  xt.add_column('quhead', 'quhead_id',                    'SERIAL', 'NOT NULL', 'public'),
  xt.add_column('quhead', 'quhead_number',                  'TEXT', 'NOT NULL', 'public'),
  xt.add_column('quhead', 'quhead_cust_id',              'INTEGER', 'NOT NULL', 'public'),
  xt.add_column('quhead', 'quhead_quotedate',               'DATE', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_id',            'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptoname',              'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptoaddress1',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptoaddress2',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptoaddress3',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptocity',              'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptostate',             'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptozipcode',           'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptophone',             'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_salesrep_id',          'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_terms_id',             'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_freight',        'NUMERIC(16,4)', NULL,       'public'),
  xt.add_column('quhead', 'quhead_ordercomments',           'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipcomments',            'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtoname',              'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtoaddress1',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtoaddress2',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtoaddress3',          'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtocity',              'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtostate',             'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtozip',               'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_commission',     'NUMERIC(16,4)', NULL,       'public'),
  xt.add_column('quhead', 'quhead_custponumber',            'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_fob',                     'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipvia',                 'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_warehous_id',          'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_packdate',                'DATE', NULL,       'public'),
  xt.add_column('quhead', 'quhead_prj_id',               'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_misc',           'NUMERIC(16,4)', 'DEFAULT 0 NOT NULL', 'public'),
  xt.add_column('quhead', 'quhead_misc_accnt_id',        'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_misc_descrip',            'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billtocountry',           'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shiptocountry',           'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_curr_id',              'INTEGER', 'DEFAULT basecurrid()', 'public'),
  xt.add_column('quhead', 'quhead_imported',             'BOOLEAN', 'DEFAULT false', 'public'),
  xt.add_column('quhead', 'quhead_expire',                  'DATE', NULL,       'public'),
  xt.add_column('quhead', 'quhead_calcfreight',          'BOOLEAN', 'DEFAULT false NOT NULL', 'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_id',      'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_honorific',  'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_first_name', 'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_middle',     'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_last_name',  'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_suffix',     'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_phone',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_title',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_fax',        'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipto_cntct_email',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_id',      'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_honorific',  'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_first_name', 'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_middle',     'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_last_name',  'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_suffix',     'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_phone',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_title',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_fax',        'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_billto_cntct_email',      'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_taxzone_id',           'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_taxtype_id',           'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_ophead_id',            'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_status',                  'TEXT', NULL,       'public'),
  xt.add_column('quhead', 'quhead_saletype_id',          'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_shipzone_id',          'INTEGER', NULL,       'public'),
  xt.add_column('quhead', 'quhead_created',     'TIMESTAMP WITH TIME ZONE', NULL, 'public'),
  xt.add_column('quhead', 'quhead_lastupdated', 'TIMESTAMP WITH TIME ZONE', NULL, 'public');

SELECT
  xt.add_constraint('quhead', 'quhead_pkey', 'PRIMARY KEY (quhead_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_number_key', 'UNIQUE (quhead_number)', 'public'),
  xt.add_constraint('quhead', 'quhead_check',
                    'CHECK ((quhead_misc = 0.0  AND quhead_misc_accnt_id IS NULL) OR
                            (quhead_misc <> 0.0 AND quhead_misc_accnt_id IS NOT NULL))', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_number_check',
                    $$CHECK (quhead_number <> '')$$, 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_status_check',
                    $$CHECK (quhead_status IN ('O', 'C', 'X'))$$, 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_billto_cntct_id_fkey',
                    'FOREIGN KEY (quhead_billto_cntct_id) REFERENCES cntct(cntct_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_misc_accnt_id_fkey',
                    'FOREIGN KEY (quhead_misc_accnt_id) REFERENCES accnt(accnt_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_ophead_id_fkey',
                    'FOREIGN KEY (quhead_ophead_id) REFERENCES ophead(ophead_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_prj_id_fkey',
                    'FOREIGN KEY (quhead_prj_id) REFERENCES prj(prj_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_salesrep_id_fkey',
                    'FOREIGN KEY (quhead_salesrep_id) REFERENCES salesrep(salesrep_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_saletype_id_fkey',
                    'FOREIGN KEY (quhead_saletype_id) REFERENCES saletype(saletype_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_shipto_cntct_id_fkey',
                    'FOREIGN KEY (quhead_shipto_cntct_id) REFERENCES cntct(cntct_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_shipto_id_fkey',
                    'FOREIGN KEY (quhead_shipto_id) REFERENCES shiptoinfo(shipto_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_shipzone_id_fkey',
                    'FOREIGN KEY (quhead_shipzone_id) REFERENCES shipzone(shipzone_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_taxtype_id_fkey',
                    'FOREIGN KEY (quhead_taxtype_id) REFERENCES taxtype(taxtype_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_taxzone_id_fkey',
                    'FOREIGN KEY (quhead_taxzone_id) REFERENCES taxzone(taxzone_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_terms_id_fkey',
                    'FOREIGN KEY (quhead_terms_id) REFERENCES terms(terms_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_quhead_warehous_id_fkey',
                    'FOREIGN KEY (quhead_warehous_id) REFERENCES whsinfo(warehous_id)', 'public'),
  xt.add_constraint('quhead', 'quhead_to_curr_symbol',
                    'FOREIGN KEY (quhead_curr_id) REFERENCES curr_symbol(curr_id)', 'public');

ALTER TABLE public.quhead ENABLE TRIGGER ALL;

COMMENT ON TABLE quhead IS 'Quote header information';

COMMENT ON COLUMN quhead.quhead_saletype_id IS 'Associated sale type for quote.';
COMMENT ON COLUMN quhead.quhead_shipzone_id IS 'Associated shipping zone for quote.';
