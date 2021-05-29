
function ZakonRabSMod;
warning off;
%закончить работу с моделью

set(findobj(mmenu, 'Tag', 'namemodelvmenu') , 'String', 'НЕТ');
    set(findobj(mmenu, 'Tag', 'mmodelir') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'moptimiz') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'mrezult') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'shmetopt') , 'Enable', 'off');
    set(findobj(mmenu, 'Tag', 'mmodelir') , 'Enable', 'off');
fail=fopen('startcong.txt','w');
fprintf(fail, '%s/n', 'НЕТ');
fclose(fail);

delete data_field.mat
delete data_uku_A.mat
delete data_nash_s.mat
delete data_nash_e.mat
delete data_uku.mat
delete data_nash_a.mat
delete data_par_s.mat
delete data_stek1.mat
delete data_stek1.mat
delete data_stek5.mat
delete data_tipmetnsi.mat
delete data_tipmetnp.mat
delete data_flag_nd.mat
delete data_Nt.mat
delete data_num_coalic.mat
delete data_qmm.mat
delete data_r_q.mat
delete data_r_set.mat
delete data_Tint.mat
delete data_x0.mat
delete data_nash_t.mat
delete data_shepli.mat
delete data_stek7.mat
delete data_tipmetUKUks.mat
delete data_tipmetWepli.mat
delete data_uku_n.mat
delete data_uku_k.mat
delete data_GrNEWs.mat
delete data_GrUKUs.mat
delete data_GrSiRaRe.mat
delete data_GrSlRaRe.mat

clear all
 