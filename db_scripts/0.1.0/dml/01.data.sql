INSERT INTO fa_construct_strategy (id, strategy, created_at, updated_at, active) VALUES (1, 'account:{account_no}@{branch}.{bank}.{type}', CURRENT_TIMESTAMP, NULL, true);
INSERT INTO fa_construct_strategy (id, strategy, created_at, updated_at, active) VALUES (2, 'account:{phone}@{wallet}.{type}',             CURRENT_TIMESTAMP, NULL, true);
INSERT INTO fa_construct_strategy (id, strategy, created_at, updated_at, active) VALUES (3, 'email:{email}.{type}',                        CURRENT_TIMESTAMP, NULL, true);
INSERT INTO fa_construct_strategy (id, strategy, created_at, updated_at, active) VALUES (4, 'token:{sub}@nationalId',                      CURRENT_TIMESTAMP, NULL, true);


INSERT INTO dfsp_providers (id, name, description, code, strategy_id, created_at, updated_at, active) VALUES (1, 'Bank 1',      'Bank 1',           'dfsp1',              1, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_providers (id, name, description, code, strategy_id, created_at, updated_at, active) VALUES (2, 'Bank 2',      'Bank 2',           'dfsp2',              1, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_providers (id, name, description, code, strategy_id, created_at, updated_at, active) VALUES (3, 'Pink Wallet', 'Pink Wallet dfsp', 'testingtoolkitdfsp', 2, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_providers (id, name, description, code, strategy_id, created_at, updated_at, active) VALUES (4, 'MPesa',       'MPesa Provider',   'mpesa',              3, CURRENT_TIMESTAMP, NULL, true);


INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (1, 'Type',            'type',        0, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (2, 'Bank',            'bank',        1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (3, 'Wallet Provider', 'wallet',      1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (4, 'Branch',          'branch',      2, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (5, 'Email',           'email',      -1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (6, 'Account Number',  'account_no', -1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_levels (id, name, code, level, next_level_id, validation_regex, created_at, updated_at, active) VALUES (7, 'Phone Number',    'phone',      -1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);


INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (1,  'Bank Account',   'bank_acc',           NULL, 1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (2,  'Wallet',         'wallet',             NULL, 1, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (3,  'MPesa',          'mpesa',              NULL, 1, NULL, 4,    CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (4,  'Bank 1',         'dfsp1',              1,    2, NULL, 1,    CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (5,  'Bank 2',         'dfsp2',              1,    2, NULL, 2,    CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (6,  'Pink Wallet',    'testingtoolkitdfsp', 2,    3, NULL, 3,    CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (7,  'Indigo Branch',  'indigo',             4,    4, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (8,  'Rhino Branch',   'rhino',              4,    4, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (9,  'Purple Branch',  'purple',             5,    4, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);
INSERT INTO dfsp_level_values (id, name, code, parent_id, level_id, next_level_id, dfsp_provider_id, created_at, updated_at, active) VALUES (10, 'Rainbow Branch', 'rainbow',            5,    4, NULL, NULL, CURRENT_TIMESTAMP, NULL, true);

UPDATE dfsp_level_values SET next_level_id = 2 WHERE id = 1;
UPDATE dfsp_level_values SET next_level_id = 3 WHERE id = 2;
UPDATE dfsp_level_values SET next_level_id = 5 WHERE id = 3;
UPDATE dfsp_level_values SET next_level_id = 4 WHERE id = 4;
UPDATE dfsp_level_values SET next_level_id = 4 WHERE id = 5;
UPDATE dfsp_level_values SET next_level_id = 7 WHERE id = 6;
UPDATE dfsp_level_values SET next_level_id = 6 WHERE id = 7;
UPDATE dfsp_level_values SET next_level_id = 6 WHERE id = 8;
UPDATE dfsp_level_values SET next_level_id = 6 WHERE id = 9;
UPDATE dfsp_level_values SET next_level_id = 6 WHERE id = 10;


INSERT INTO id_providers (id, name, description, code, strategy_id, created_at, updated_at, active) VALUES (1, 'National ID', 'National ID Provider', 'nationalId', 4, CURRENT_TIMESTAMP, NULL, true);


INSERT INTO login_providers (id, name, type, description, login_button_text, login_button_image_url, authorization_parameters, id_provider_id, created_at, updated_at, active) VALUES (1, 'Esignet', 'oauth2_auth_code', 'Esignet', 'Signin with National ID', 'data:image/png;base64,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', '{
  "authorize_endpoint": "https://esignet.openg2p.sandbox.net/authorize",
  "token_endpoint": "https://esignet.openg2p.sandbox.net/v1/esignet/oauth/token",
  "validate_endpoint": "https://esignet.openg2p.sandbox.net/v1/esignet/oidc/userinfo",
  "jwks_endpoint": "https://esignet.openg2p.sandbox.net/v1/esignet/oauth/.well-known/jwks.json",
  "client_id": "",
  "client_assertion_type": "urn:ietf:params:oauth:client-assertion-type:jwt-bearer",
  "client_assertion_jwk": {},
  "response_type": "code",
  "scope": "openid profile email",
  "redirect_uri": "https://spar.openg2p.sandbox.net/spar/v1/oauth2/callback",
  "code_verifier": "_cHemmb3ZJIeSNj7ND1agM-G4HgmenFxPp3l-vnRKDU",
  "extra_authorize_parameters": {
    "acr_values":"mosip:idp:acr:generated-code mosip:idp:acr:biometrics mosip:idp:acr:linked-wallet",
    "claims": "{\"userinfo\":{\"name\":{\"essential\":true},\"phone_number\":{\"essential\":false},\"email\":{\"essential\":false},\"gender\":{\"essential\":true},\"birthdate\":{\"essential\":true},\"address\":{\"essential\":false},\"picture\":{\"essential\":false}},\"id_token\":{}}"
  }
}', 1, CURRENT_TIMESTAMP, NULL, true);


SELECT pg_catalog.setval('fa_construct_strategy_id_seq', 4, true);
SELECT pg_catalog.setval('dfsp_providers_id_seq', 4, true);
SELECT pg_catalog.setval('dfsp_levels_id_seq', 7, true);
SELECT pg_catalog.setval('dfsp_level_values_id_seq', 10, false);
SELECT pg_catalog.setval('id_providers_id_seq', 1, true);
SELECT pg_catalog.setval('login_providers_id_seq', 1, true);
