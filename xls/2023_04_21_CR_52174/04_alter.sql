ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_g TO brzdiaca_hmotnost_g_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_p TO brzdiaca_hmotnost_p_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_r TO brzdiaca_hmotnost_r_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_ge TO brzdiaca_hmotnost_ge_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_pe TO brzdiaca_hmotnost_pe_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_re TO brzdiaca_hmotnost_re_old;
ALTER TABLE t_rad_hdv RENAME COLUMN brzdiaca_hmotnost_r_brzdy TO brzdiaca_hmotnost_r_brzdy_old;


ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN hmotnost TO hmotnost_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_g TO brzdiaca_hmotnost_g_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_p TO brzdiaca_hmotnost_p_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_r TO brzdiaca_hmotnost_r_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_ge TO brzdiaca_hmotnost_ge_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_pe TO brzdiaca_hmotnost_pe_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_re TO brzdiaca_hmotnost_re_old;
ALTER TABLE t_typ_tratoveho_stroja RENAME COLUMN brzdiaca_hmotnost_r_brzdy TO brzdiaca_hmotnost_r_brzdy_old;



ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_g NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_p NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_r NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_ge NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_pe NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_re NUMBER(5, 2);
ALTER TABLE t_rad_hdv ADD brzdiaca_hmotnost_r_brzdy NUMBER(5, 2);

ALTER TABLE t_typ_tratoveho_stroja ADD hmotnost NUMBER(4, 1);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_g NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_p NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_r NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_ge NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_pe NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_re NUMBER(5, 2);
ALTER TABLE t_typ_tratoveho_stroja ADD brzdiaca_hmotnost_r_brzdy NUMBER(5, 2);