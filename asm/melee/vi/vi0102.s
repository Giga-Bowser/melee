.include "macros.inc"

.section .text  # 0x803124BC - 0x8032261C

.global vi0102_8031CB00
vi0102_8031CB00:
/* 8031CB00 003196E0  7C 08 02 A6 */	mflr r0
/* 8031CB04 003196E4  90 01 00 04 */	stw r0, 4(r1)
/* 8031CB08 003196E8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8031CB0C 003196EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8031CB10 003196F0  3B E3 00 00 */	addi r31, r3, 0
/* 8031CB14 003196F4  38 60 00 06 */	li r3, 6
/* 8031CB18 003196F8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8031CB1C 003196FC  3B C4 00 00 */	addi r30, r4, 0
/* 8031CB20 00319700  4B D0 C0 7D */	bl Camera_80028B9C
/* 8031CB24 00319704  4B CF 31 B9 */	bl lb_8000FCDC
/* 8031CB28 00319708  4B D2 51 51 */	bl mpColl_80041C78
/* 8031CB2C 0031970C  38 60 00 40 */	li r3, 0x40
/* 8031CB30 00319710  4B EA 38 49 */	bl Ground_801C0378
/* 8031CB34 00319714  38 60 00 04 */	li r3, 4
/* 8031CB38 00319718  38 80 00 00 */	li r4, 0
/* 8031CB3C 0031971C  4B F0 86 AD */	bl Stage_802251E8
/* 8031CB40 00319720  4B F4 A4 69 */	bl Item_80266FA8
/* 8031CB44 00319724  4B F4 A4 89 */	bl Item_80266FCC
/* 8031CB48 00319728  4B F0 87 05 */	bl Stage_8022524C
/* 8031CB4C 0031972C  38 60 00 04 */	li r3, 4
/* 8031CB50 00319730  38 80 00 00 */	li r4, 0
/* 8031CB54 00319734  4B F0 87 D9 */	bl Stage_8022532C
/* 8031CB58 00319738  4B DA 1F D1 */	bl ftDemo_ObjAllocInit
/* 8031CB5C 0031973C  4B D1 A1 FD */	bl Player_InitAllPlayers
/* 8031CB60 00319740  80 8D B8 98 */	lwz r4, un_804D6F38@sda21(r13)
/* 8031CB64 00319744  38 60 00 08 */	li r3, 8
/* 8031CB68 00319748  38 A0 00 04 */	li r5, 4
/* 8031CB6C 0031974C  4B D1 A2 B5 */	bl Player_80036E20
/* 8031CB70 00319750  38 60 00 00 */	li r3, 0
/* 8031CB74 00319754  38 80 00 08 */	li r4, 8
/* 8031CB78 00319758  4B D1 58 29 */	bl Player_SetPlayerCharacter
/* 8031CB7C 0031975C  38 60 00 00 */	li r3, 0
/* 8031CB80 00319760  38 9F 00 00 */	addi r4, r31, 0
/* 8031CB84 00319764  4B D1 66 85 */	bl Player_SetCostumeId
/* 8031CB88 00319768  38 60 00 00 */	li r3, 0
/* 8031CB8C 0031976C  38 80 00 00 */	li r4, 0
/* 8031CB90 00319770  4B D1 69 3D */	bl Player_SetPlayerId
/* 8031CB94 00319774  38 60 00 00 */	li r3, 0
/* 8031CB98 00319778  38 80 00 02 */	li r4, 2
/* 8031CB9C 0031977C  4B D1 59 B1 */	bl Player_SetSlottype
/* 8031CBA0 00319780  38 60 00 00 */	li r3, 0
/* 8031CBA4 00319784  C0 22 E6 60 */	lfs f1, un_804DE040@sda21(r2)
/* 8031CBA8 00319788  4B D1 64 ED */	bl Player_SetFacingDirection
/* 8031CBAC 0031978C  3C 60 80 40 */	lis r3, un_80400010@ha
/* 8031CBB0 00319790  3B E3 00 10 */	addi r31, r3, un_80400010@l
/* 8031CBB4 00319794  38 9F 00 00 */	addi r4, r31, 0
/* 8031CBB8 00319798  38 60 00 00 */	li r3, 0
/* 8031CBBC 0031979C  4B D1 5B AD */	bl Player_80032768
/* 8031CBC0 003197A0  38 60 00 00 */	li r3, 0
/* 8031CBC4 003197A4  38 80 00 09 */	li r4, 9
/* 8031CBC8 003197A8  4B D1 A3 6D */	bl Player_80036F34
/* 8031CBCC 003197AC  80 8D B8 98 */	lwz r4, un_804D6F38@sda21(r13)
/* 8031CBD0 003197B0  38 60 00 07 */	li r3, 7
/* 8031CBD4 003197B4  38 A0 00 04 */	li r5, 4
/* 8031CBD8 003197B8  4B D1 A2 49 */	bl Player_80036E20
/* 8031CBDC 003197BC  38 60 00 01 */	li r3, 1
/* 8031CBE0 003197C0  38 80 00 07 */	li r4, 7
/* 8031CBE4 003197C4  4B D1 57 BD */	bl Player_SetPlayerCharacter
/* 8031CBE8 003197C8  38 60 00 01 */	li r3, 1
/* 8031CBEC 003197CC  38 9E 00 00 */	addi r4, r30, 0
/* 8031CBF0 003197D0  4B D1 66 19 */	bl Player_SetCostumeId
/* 8031CBF4 003197D4  38 60 00 01 */	li r3, 1
/* 8031CBF8 003197D8  38 80 00 00 */	li r4, 0
/* 8031CBFC 003197DC  4B D1 68 D1 */	bl Player_SetPlayerId
/* 8031CC00 003197E0  38 60 00 01 */	li r3, 1
/* 8031CC04 003197E4  38 80 00 02 */	li r4, 2
/* 8031CC08 003197E8  4B D1 59 45 */	bl Player_SetSlottype
/* 8031CC0C 003197EC  38 60 00 01 */	li r3, 1
/* 8031CC10 003197F0  C0 22 E6 60 */	lfs f1, un_804DE040@sda21(r2)
/* 8031CC14 003197F4  4B D1 64 81 */	bl Player_SetFacingDirection
/* 8031CC18 003197F8  38 9F 00 00 */	addi r4, r31, 0
/* 8031CC1C 003197FC  38 60 00 01 */	li r3, 1
/* 8031CC20 00319800  4B D1 5B 49 */	bl Player_80032768
/* 8031CC24 00319804  38 60 00 01 */	li r3, 1
/* 8031CC28 00319808  38 80 00 09 */	li r4, 9
/* 8031CC2C 0031980C  4B D1 A3 09 */	bl Player_80036F34
/* 8031CC30 00319810  38 60 00 18 */	li r3, 0x18
/* 8031CC34 00319814  4B D0 A2 F9 */	bl lbAudioAx_80026F2C
/* 8031CC38 00319818  38 60 00 08 */	li r3, 8
/* 8031CC3C 0031981C  38 C0 00 00 */	li r6, 0
/* 8031CC40 00319820  38 A0 00 04 */	li r5, 4
/* 8031CC44 00319824  4B D0 A3 E9 */	bl lbAudioAx_8002702C
/* 8031CC48 00319828  4B D0 A5 21 */	bl lbAudioAx_80027168
/* 8031CC4C 0031982C  4B D0 A9 FD */	bl lbAudioAx_80027648
/* 8031CC50 00319830  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8031CC54 00319834  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8031CC58 00319838  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8031CC5C 0031983C  38 21 00 18 */	addi r1, r1, 0x18
/* 8031CC60 00319840  7C 08 03 A6 */	mtlr r0
/* 8031CC64 00319844  4E 80 00 20 */	blr
.L_8031CC68:
/* 8031CC68 00319848  7C 08 02 A6 */	mflr r0
/* 8031CC6C 0031984C  90 01 00 04 */	stw r0, 4(r1)
/* 8031CC70 00319850  94 21 FF F8 */	stwu r1, -8(r1)
/* 8031CC74 00319854  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8031CC78 00319858  48 05 3C B1 */	bl HSD_JObjAnimAll
/* 8031CC7C 0031985C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8031CC80 00319860  38 21 00 08 */	addi r1, r1, 8
/* 8031CC84 00319864  7C 08 03 A6 */	mtlr r0
/* 8031CC88 00319868  4E 80 00 20 */	blr
.L_8031CC8C:
/* 8031CC8C 0031986C  7C 08 02 A6 */	mflr r0
/* 8031CC90 00319870  90 01 00 04 */	stw r0, 4(r1)
/* 8031CC94 00319874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031CC98 00319878  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031CC9C 0031987C  3B E3 00 00 */	addi r31, r3, 0
/* 8031CCA0 00319880  38 60 00 00 */	li r3, 0
/* 8031CCA4 00319884  4B CF 26 E9 */	bl lbShadow_8000F38C
/* 8031CCA8 00319888  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8031CCAC 0031988C  48 04 B7 AD */	bl HSD_CObjSetCurrent
/* 8031CCB0 00319890  2C 03 00 00 */	cmpwi r3, 0
/* 8031CCB4 00319894  41 82 00 58 */	beq .L_8031CD0C
/* 8031CCB8 00319898  38 CD B8 94 */	addi r6, r13, erase_colors_vi0102@sda21
/* 8031CCBC 0031989C  88 6D B8 94 */	lbz r3, erase_colors_vi0102@sda21(r13)
/* 8031CCC0 003198A0  88 86 00 01 */	lbz r4, 1(r6)
/* 8031CCC4 003198A4  88 A6 00 02 */	lbz r5, 2(r6)
/* 8031CCC8 003198A8  88 C6 00 03 */	lbz r6, 3(r6)
/* 8031CCCC 003198AC  48 05 7D BD */	bl HSD_SetEraseColor
/* 8031CCD0 003198B0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8031CCD4 003198B4  38 80 00 01 */	li r4, 1
/* 8031CCD8 003198B8  38 A0 00 00 */	li r5, 0
/* 8031CCDC 003198BC  38 C0 00 01 */	li r6, 1
/* 8031CCE0 003198C0  48 04 AA 19 */	bl HSD_CObjEraseScreen
/* 8031CCE4 003198C4  7F E3 FB 78 */	mr r3, r31
/* 8031CCE8 003198C8  4B FF FD 1D */	bl vi_8031CA04
/* 8031CCEC 003198CC  38 00 08 81 */	li r0, 0x881
/* 8031CCF0 003198D0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8031CCF4 003198D4  38 00 00 00 */	li r0, 0
/* 8031CCF8 003198D8  38 7F 00 00 */	addi r3, r31, 0
/* 8031CCFC 003198DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8031CD00 003198E0  38 80 00 07 */	li r4, 7
/* 8031CD04 003198E4  48 07 41 CD */	bl HSD_GObj_80390ED0
/* 8031CD08 003198E8  48 04 B9 01 */	bl HSD_CObjEndCurrent
.L_8031CD0C:
/* 8031CD0C 003198EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031CD10 003198F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031CD14 003198F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8031CD18 003198F8  7C 08 03 A6 */	mtlr r0
/* 8031CD1C 003198FC  4E 80 00 20 */	blr
.L_8031CD20:
/* 8031CD20 00319900  7C 08 02 A6 */	mflr r0
/* 8031CD24 00319904  90 01 00 04 */	stw r0, 4(r1)
/* 8031CD28 00319908  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8031CD2C 0031990C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8031CD30 00319910  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 8031CD34 00319914  7F E3 FB 78 */	mr r3, r31
/* 8031CD38 00319918  48 04 AD 81 */	bl HSD_CObjAnim
/* 8031CD3C 0031991C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8031CD40 00319920  C0 22 E6 68 */	lfs f1, un_804DE048@sda21(r2)
/* 8031CD44 00319924  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8031CD48 00319928  C0 03 00 04 */	lfs f0, 4(r3)
/* 8031CD4C 0031992C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8031CD50 00319930  40 82 00 10 */	bne .L_8031CD60
/* 8031CD54 00319934  38 60 00 21 */	li r3, 0x21
/* 8031CD58 00319938  38 80 00 00 */	li r4, 0
/* 8031CD5C 0031993C  4B FF FC 59 */	bl vi_8031C9B4
.L_8031CD60:
/* 8031CD60 00319940  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8031CD64 00319944  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8031CD68 00319948  C0 23 00 04 */	lfs f1, 4(r3)
/* 8031CD6C 0031994C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8031CD70 00319950  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8031CD74 00319954  40 82 00 0C */	bne .L_8031CD80
/* 8031CD78 00319958  4B CF 78 7D */	bl lb_800145F4
/* 8031CD7C 0031995C  4B E8 7D E5 */	bl gm_801A4B60
.L_8031CD80:
/* 8031CD80 00319960  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8031CD84 00319964  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8031CD88 00319968  38 21 00 18 */	addi r1, r1, 0x18
/* 8031CD8C 0031996C  7C 08 03 A6 */	mtlr r0
/* 8031CD90 00319970  4E 80 00 20 */	blr
.global vi0102_Initialize
vi0102_Initialize:
/* 8031CD94 00319974  7C 08 02 A6 */	mflr r0
/* 8031CD98 00319978  90 01 00 04 */	stw r0, 4(r1)
/* 8031CD9C 0031997C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8031CDA0 00319980  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8031CDA4 00319984  7C 7E 1B 78 */	mr r30, r3
/* 8031CDA8 00319988  4B D0 69 35 */	bl lbAudioAx_800236DC
/* 8031CDAC 0031998C  4B D3 E7 0D */	bl efLib_8005B4B8
/* 8031CDB0 00319990  38 60 00 00 */	li r3, 0
/* 8031CDB4 00319994  4B D4 A5 C9 */	bl efAsync_8006737C
/* 8031CDB8 00319998  38 60 00 56 */	li r3, 0x56
/* 8031CDBC 0031999C  4B D0 71 6D */	bl lbAudioAx_80023F28
/* 8031CDC0 003199A0  38 60 00 01 */	li r3, 1
/* 8031CDC4 003199A4  4B D0 80 8D */	bl lbAudioAx_80024E50
/* 8031CDC8 003199A8  3C 60 80 40 */	lis r3, un_8040001C@ha
/* 8031CDCC 003199AC  4C C6 31 82 */	crclr 6
/* 8031CDD0 003199B0  3C 80 80 40 */	lis r4, un_80400028@ha
/* 8031CDD4 003199B4  38 A4 00 28 */	addi r5, r4, un_80400028@l
/* 8031CDD8 003199B8  38 63 00 1C */	addi r3, r3, un_8040001C@l
/* 8031CDDC 003199BC  38 8D B8 90 */	addi r4, r13, un_804D6F30@sda21
/* 8031CDE0 003199C0  38 C0 00 00 */	li r6, 0
/* 8031CDE4 003199C4  4B CF 9E 81 */	bl lbArchive_80016C64
/* 8031CDE8 003199C8  90 6D B8 98 */	stw r3, un_804D6F38@sda21(r13)
/* 8031CDEC 003199CC  38 60 00 13 */	li r3, 0x13
/* 8031CDF0 003199D0  38 80 00 14 */	li r4, 0x14
/* 8031CDF4 003199D4  38 A0 00 00 */	li r5, 0
/* 8031CDF8 003199D8  48 07 33 F9 */	bl GObj_Create
/* 8031CDFC 003199DC  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CE00 003199E0  7C 7D 1B 78 */	mr r29, r3
/* 8031CE04 003199E4  80 64 00 04 */	lwz r3, 4(r4)
/* 8031CE08 003199E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8031CE0C 003199EC  4B CF 6D 09 */	bl lb_80013B14
/* 8031CE10 003199F0  3B 83 00 00 */	addi r28, r3, 0
/* 8031CE14 003199F4  88 8D C1 AB */	lbz r4, HSD_GObj_804D784B@sda21(r13)
/* 8031CE18 003199F8  38 7D 00 00 */	addi r3, r29, 0
/* 8031CE1C 003199FC  38 BC 00 00 */	addi r5, r28, 0
/* 8031CE20 00319A00  48 07 3C 51 */	bl HSD_GObjObject_80390A70
/* 8031CE24 00319A04  3C 60 80 32 */	lis r3, .L_8031CC8C@ha
/* 8031CE28 00319A08  38 83 CC 8C */	addi r4, r3, .L_8031CC8C@l
/* 8031CE2C 00319A0C  38 7D 00 00 */	addi r3, r29, 0
/* 8031CE30 00319A10  38 A0 00 08 */	li r5, 8
/* 8031CE34 00319A14  48 07 39 29 */	bl GObj_SetupGXLinkMax
/* 8031CE38 00319A18  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CE3C 00319A1C  7F 83 E3 78 */	mr r3, r28
/* 8031CE40 00319A20  80 84 00 04 */	lwz r4, 4(r4)
/* 8031CE44 00319A24  80 84 00 04 */	lwz r4, 4(r4)
/* 8031CE48 00319A28  80 84 00 00 */	lwz r4, 0(r4)
/* 8031CE4C 00319A2C  48 04 AA 81 */	bl HSD_CObjAddAnim
/* 8031CE50 00319A30  7F 83 E3 78 */	mr r3, r28
/* 8031CE54 00319A34  C0 22 E6 64 */	lfs f1, un_804DE044@sda21(r2)
/* 8031CE58 00319A38  48 04 AC B1 */	bl HSD_CObjReqAnim
/* 8031CE5C 00319A3C  7F 83 E3 78 */	mr r3, r28
/* 8031CE60 00319A40  48 04 AC 59 */	bl HSD_CObjAnim
/* 8031CE64 00319A44  3C 60 80 32 */	lis r3, .L_8031CD20@ha
/* 8031CE68 00319A48  38 83 CD 20 */	addi r4, r3, .L_8031CD20@l
/* 8031CE6C 00319A4C  38 7D 00 00 */	addi r3, r29, 0
/* 8031CE70 00319A50  38 A0 00 00 */	li r5, 0
/* 8031CE74 00319A54  48 07 2E E1 */	bl HSD_GObjProc_8038FD54
/* 8031CE78 00319A58  38 00 00 00 */	li r0, 0
/* 8031CE7C 00319A5C  3C 80 80 39 */	lis r4, HSD_GObj_JObjCallback@ha
/* 8031CE80 00319A60  3C 60 80 32 */	lis r3, .L_8031CC68@ha
/* 8031CE84 00319A64  54 1F 10 3A */	slwi r31, r0, 2
/* 8031CE88 00319A68  3B 84 10 70 */	addi r28, r4, HSD_GObj_JObjCallback@l
/* 8031CE8C 00319A6C  3B A3 CC 68 */	addi r29, r3, .L_8031CC68@l
/* 8031CE90 00319A70  48 00 00 94 */	b .L_8031CF24
.L_8031CE94:
/* 8031CE94 00319A74  38 60 00 0E */	li r3, 0xe
/* 8031CE98 00319A78  38 80 00 0F */	li r4, 0xf
/* 8031CE9C 00319A7C  38 A0 00 00 */	li r5, 0
/* 8031CEA0 00319A80  48 07 33 51 */	bl GObj_Create
/* 8031CEA4 00319A84  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CEA8 00319A88  7C 7A 1B 78 */	mr r26, r3
/* 8031CEAC 00319A8C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031CEB0 00319A90  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8031CEB4 00319A94  80 63 00 00 */	lwz r3, 0(r3)
/* 8031CEB8 00319A98  48 05 3F 8D */	bl HSD_JObjLoadJoint
/* 8031CEBC 00319A9C  3B 63 00 00 */	addi r27, r3, 0
/* 8031CEC0 00319AA0  88 8D C1 A9 */	lbz r4, HSD_GObj_804D7849@sda21(r13)
/* 8031CEC4 00319AA4  38 7A 00 00 */	addi r3, r26, 0
/* 8031CEC8 00319AA8  38 BB 00 00 */	addi r5, r27, 0
/* 8031CECC 00319AAC  48 07 3B A5 */	bl HSD_GObjObject_80390A70
/* 8031CED0 00319AB0  38 7A 00 00 */	addi r3, r26, 0
/* 8031CED4 00319AB4  38 9C 00 00 */	addi r4, r28, 0
/* 8031CED8 00319AB8  38 A0 00 0B */	li r5, 0xb
/* 8031CEDC 00319ABC  38 C0 00 00 */	li r6, 0
/* 8031CEE0 00319AC0  48 07 37 BD */	bl GObj_SetupGXLink
/* 8031CEE4 00319AC4  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CEE8 00319AC8  38 7B 00 00 */	addi r3, r27, 0
/* 8031CEEC 00319ACC  38 A0 00 00 */	li r5, 0
/* 8031CEF0 00319AD0  80 84 00 00 */	lwz r4, 0(r4)
/* 8031CEF4 00319AD4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8031CEF8 00319AD8  4B E4 BA 65 */	bl gm_8016895C
/* 8031CEFC 00319ADC  7F 63 DB 78 */	mr r3, r27
/* 8031CF00 00319AE0  C0 22 E6 64 */	lfs f1, un_804DE044@sda21(r2)
/* 8031CF04 00319AE4  48 05 29 B9 */	bl HSD_JObjReqAnimAll
/* 8031CF08 00319AE8  7F 63 DB 78 */	mr r3, r27
/* 8031CF0C 00319AEC  48 05 3A 1D */	bl HSD_JObjAnimAll
/* 8031CF10 00319AF0  38 7A 00 00 */	addi r3, r26, 0
/* 8031CF14 00319AF4  38 9D 00 00 */	addi r4, r29, 0
/* 8031CF18 00319AF8  38 A0 00 17 */	li r5, 0x17
/* 8031CF1C 00319AFC  48 07 2E 39 */	bl HSD_GObjProc_8038FD54
/* 8031CF20 00319B00  3B FF 00 04 */	addi r31, r31, 4
.L_8031CF24:
/* 8031CF24 00319B04  80 6D B8 90 */	lwz r3, un_804D6F30@sda21(r13)
/* 8031CF28 00319B08  80 63 00 00 */	lwz r3, 0(r3)
/* 8031CF2C 00319B0C  7C 03 F8 2E */	lwzx r0, r3, r31
/* 8031CF30 00319B10  28 00 00 00 */	cmplwi r0, 0
/* 8031CF34 00319B14  40 82 FF 60 */	bne .L_8031CE94
/* 8031CF38 00319B18  88 7E 00 01 */	lbz r3, 1(r30)
/* 8031CF3C 00319B1C  88 9E 00 03 */	lbz r4, 3(r30)
/* 8031CF40 00319B20  4B FF FB C1 */	bl vi0102_8031CB00
/* 8031CF44 00319B24  38 60 00 0A */	li r3, 0xa
/* 8031CF48 00319B28  38 80 00 03 */	li r4, 3
/* 8031CF4C 00319B2C  38 A0 00 00 */	li r5, 0
/* 8031CF50 00319B30  48 07 32 A1 */	bl GObj_Create
/* 8031CF54 00319B34  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CF58 00319B38  7C 7B 1B 78 */	mr r27, r3
/* 8031CF5C 00319B3C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8031CF60 00319B40  80 63 00 00 */	lwz r3, 0(r3)
/* 8031CF64 00319B44  48 06 0C D5 */	bl HSD_FogLoadDesc
/* 8031CF68 00319B48  3B 43 00 00 */	addi r26, r3, 0
/* 8031CF6C 00319B4C  88 8D C1 A8 */	lbz r4, HSD_GObj_804D7848@sda21(r13)
/* 8031CF70 00319B50  38 7B 00 00 */	addi r3, r27, 0
/* 8031CF74 00319B54  38 BA 00 00 */	addi r5, r26, 0
/* 8031CF78 00319B58  48 07 3A F9 */	bl HSD_GObjObject_80390A70
/* 8031CF7C 00319B5C  3C 60 80 39 */	lis r3, HSD_GObj_FogCallback@ha
/* 8031CF80 00319B60  38 83 10 B4 */	addi r4, r3, HSD_GObj_FogCallback@l
/* 8031CF84 00319B64  38 7B 00 00 */	addi r3, r27, 0
/* 8031CF88 00319B68  38 A0 00 00 */	li r5, 0
/* 8031CF8C 00319B6C  38 C0 00 00 */	li r6, 0
/* 8031CF90 00319B70  48 07 37 0D */	bl GObj_SetupGXLink
/* 8031CF94 00319B74  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 8031CF98 00319B78  38 60 00 0B */	li r3, 0xb
/* 8031CF9C 00319B7C  38 80 00 03 */	li r4, 3
/* 8031CFA0 00319B80  90 0D B8 94 */	stw r0, erase_colors_vi0102@sda21(r13)
/* 8031CFA4 00319B84  38 A0 00 00 */	li r5, 0
/* 8031CFA8 00319B88  48 07 32 49 */	bl GObj_Create
/* 8031CFAC 00319B8C  80 8D B8 90 */	lwz r4, un_804D6F30@sda21(r13)
/* 8031CFB0 00319B90  7C 7A 1B 78 */	mr r26, r3
/* 8031CFB4 00319B94  80 64 00 08 */	lwz r3, 8(r4)
/* 8031CFB8 00319B98  4B CF 4B 0D */	bl lb_80011AC4
/* 8031CFBC 00319B9C  88 8D C1 AA */	lbz r4, HSD_GObj_804D784A@sda21(r13)
/* 8031CFC0 00319BA0  38 A3 00 00 */	addi r5, r3, 0
/* 8031CFC4 00319BA4  38 7A 00 00 */	addi r3, r26, 0
/* 8031CFC8 00319BA8  48 07 3A A9 */	bl HSD_GObjObject_80390A70
/* 8031CFCC 00319BAC  3C 60 80 39 */	lis r3, HSD_GObj_LObjCallback@ha
/* 8031CFD0 00319BB0  38 83 10 44 */	addi r4, r3, HSD_GObj_LObjCallback@l
/* 8031CFD4 00319BB4  38 7A 00 00 */	addi r3, r26, 0
/* 8031CFD8 00319BB8  38 A0 00 00 */	li r5, 0
/* 8031CFDC 00319BBC  38 C0 00 00 */	li r6, 0
/* 8031CFE0 00319BC0  48 07 36 BD */	bl GObj_SetupGXLink
/* 8031CFE4 00319BC4  38 60 00 00 */	li r3, 0
/* 8031CFE8 00319BC8  4B D0 7E 69 */	bl lbAudioAx_80024E50
/* 8031CFEC 00319BCC  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8031CFF0 00319BD0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8031CFF4 00319BD4  38 21 00 28 */	addi r1, r1, 0x28
/* 8031CFF8 00319BD8  7C 08 03 A6 */	mtlr r0
/* 8031CFFC 00319BDC  4E 80 00 20 */	blr

.global vi0102_8031D000
vi0102_8031D000:
/* 8031D000 00319BE0  7C 08 02 A6 */	mflr r0
/* 8031D004 00319BE4  90 01 00 04 */	stw r0, 4(r1)
/* 8031D008 00319BE8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8031D00C 00319BEC  4B FF FA A1 */	bl vi_8031CAAC
/* 8031D010 00319BF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8031D014 00319BF4  38 21 00 08 */	addi r1, r1, 8
/* 8031D018 00319BF8  7C 08 03 A6 */	mtlr r0
/* 8031D01C 00319BFC  4E 80 00 20 */	blr

.global vi0102_8031D020
vi0102_8031D020:
/* 8031D020 00319C00  98 6D B8 C0 */	stb r3, un_804D6F60@sda21(r13)
/* 8031D024 00319C04  38 6D B8 C0 */	addi r3, r13, un_804D6F60@sda21
/* 8031D028 00319C08  98 83 00 01 */	stb r4, 1(r3)
/* 8031D02C 00319C0C  4E 80 00 20 */	blr


.section .data
    .balign 8
.global un_80400010
un_80400010:
    .4byte NULL
    .4byte NULL
    .4byte NULL
.global un_8040001C
un_8040001C:
    .asciz "Vi0102.dat"
    .balign 4
.global un_80400028
un_80400028:
    .asciz "visual0102Scene"
    .balign 4


.section .sdata2
    .balign 8
.global un_804DE040
un_804DE040:
    .4byte 0x3F800000
.global un_804DE044
un_804DE044:
    .4byte 0x00000000
.global un_804DE048
un_804DE048:
    .4byte 0x433E0000
    .4byte 0x00000000
