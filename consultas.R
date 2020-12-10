tabela(etapas %>% filter(uo_cod == 37101, item_cod == 34) %>% group_by(  fonte_det_cod,   item) %>% summarise(saldo = sum(saldo)) %>%  pivot_wider( names_from = item, values_from = saldo))

tabela(etapas %>% filter(uo_cod == 37101, item_cod == 56) %>% group_by(  fonte_det_cod,   item) %>% summarise(saldo = sum(saldo)) %>%  pivot_wider( names_from = item, values_from = saldo))

tabela(limite %>% filter(ug_cliente=="370001DIRETORIA DE GESTAO INTERNA(CGU)") %>% group_by(ug_cliente, fonte_det_cod) %>% summarise(saldo = sum(saldo)))

tabela(repasse %>% filter(ug_cliente =="370001DIRETORIA DE GESTAO INTERNA(CGU)") %>% group_by(ug_cliente, fonte_det_cod,doc_tipo_cod) %>% summarise(saldo= sum(saldo)))


tabela(limite %>% group_by( fonte_det_cod) %>% summarise(saldo = sum(saldo)))


tabela(custos %>% filter (ugr_cod %in% c (380951 , 170596), imovel_custo != "Nunes Machado") %>%  group_by( pi , mes_nome) %>% summarise(custo = sum(custo)) %>% pivot_wider( names_from = mes_nome, values_from = custo,values_fill = 0) %>%  mutate_all(~replace(., is.na(.), 0))%>%
         adorn_totals("col"),"Total"
)


tabela(etapas %>% filter(item_cod == 30, ugr_cod %in% c (380951 , 170596)) %>%group_by( fav) %>% summarise(saldo = sum(saldo)) )


tabela(etapas %>% filter(item_cod %in% c(19,30), ugr_cod %in% c (380951 , 170596)) %>%group_by( pi) %>% summarise(saldo = sum(saldo)) )

tabela(etapas %>% filter(item_cod %in% c(19), ugr_cod %in% c (380951 , 170596)) %>%group_by( pi) %>% summarise(saldo = sum(saldo)) )




tabela(custos %>% filter (ugr_cod %in% c (170173), imovel_custo != "Nunes Machado") %>%  group_by( fav,pi , mes_nome) %>% summarise(custo = sum(custo)) %>% pivot_wider( names_from = mes_nome, values_from = custo,values_fill = 0) %>%  mutate_all(~replace(., is.na(.), 0))%>%
         adorn_totals("col"),"Total"
)


tabela(etapas %>% filter(item_cod == 30, ugr_cod %in% c (170173)) %>%group_by( fav, pi) %>% summarise(saldo = sum(saldo)) )


tabela(etapas %>% filter(item_cod %in% c(19,30), ugr_cod %in% c (170173)) %>%group_by( pi) %>% summarise(saldo = sum(saldo)) )

tabela(etapas %>% filter(item_cod %in% c(19), ugr_cod %in% c (170173)) %>%group_by( pi) %>% summarise(saldo = sum(saldo)) )