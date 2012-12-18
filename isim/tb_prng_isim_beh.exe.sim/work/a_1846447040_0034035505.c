/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x54af6ca1 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/pin3da/Repos/shrinking_generator/lfsr_128.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1846447040_0034035505_p_0(char *t0)
{
    char t18[16];
    char t19[16];
    char t20[16];
    char t22[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    int t13;
    int t14;
    char *t15;
    unsigned char t16;
    char *t17;
    unsigned int t21;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (0 - 127);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2208U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    *((unsigned char *)t8) = t7;
    xsi_set_current_line(46, ng0);
    t3 = (128 - 1);
    t1 = (t0 + 6607);
    *((int *)t1) = 0;
    t2 = (t0 + 6611);
    *((int *)t2) = t3;
    t10 = 0;
    t11 = t3;

LAB2:    if (t10 <= t11)
        goto LAB3;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t16 = (t7 == (unsigned char)3);
    if (t16 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t7 != 0)
        goto LAB10;

LAB11:
LAB8:    t1 = (t0 + 3872);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t8 = (t0 + 2208U);
    t9 = *((char **)t8);
    t7 = *((unsigned char *)t9);
    t8 = (t0 + 2328U);
    t12 = *((char **)t8);
    t8 = (t0 + 6607);
    t13 = *((int *)t8);
    t14 = (t13 - 127);
    t4 = (t14 * -1);
    xsi_vhdl_check_range_of_index(127, 0, -1, *((int *)t8));
    t5 = (1U * t4);
    t6 = (0 + t5);
    t15 = (t12 + t6);
    *((unsigned char *)t15) = t7;

LAB4:    t1 = (t0 + 6607);
    t10 = *((int *)t1);
    t2 = (t0 + 6611);
    t11 = *((int *)t2);
    if (t10 == t11)
        goto LAB5;

LAB6:    t3 = (t10 + 1);
    t10 = t3;
    t8 = (t0 + 6607);
    *((int *)t8) = t10;
    goto LAB2;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t8 = *((char **)t1);
    t1 = (t0 + 3968);
    t9 = (t1 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t8, 128U);
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t3 = (128 - 1);
    t4 = (127 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t8 + t6);
    t12 = ((IEEE_P_2592010699) + 4000);
    t15 = (t20 + 0U);
    t17 = (t15 + 0U);
    *((int *)t17) = 127;
    t17 = (t15 + 4U);
    *((int *)t17) = 1;
    t17 = (t15 + 8U);
    *((int *)t17) = -1;
    t10 = (1 - 127);
    t21 = (t10 * -1);
    t21 = (t21 + 1);
    t17 = (t15 + 12U);
    *((unsigned int *)t17) = t21;
    t9 = xsi_base_array_concat(t9, t19, t12, (char)99, (unsigned char)2, (char)97, t2, t20, (char)101);
    t17 = (t0 + 2328U);
    t23 = *((char **)t17);
    t17 = (t0 + 6064U);
    t24 = (t0 + 2088U);
    t25 = *((char **)t24);
    t24 = (t0 + 6048U);
    t26 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t22, t23, t17, t25, t24);
    t27 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t18, t9, t19, t26, t22);
    t28 = (t18 + 12U);
    t21 = *((unsigned int *)t28);
    t29 = (1U * t21);
    t16 = (128U != t29);
    if (t16 == 1)
        goto LAB12;

LAB13:    t30 = (t0 + 3968);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t27, 128U);
    xsi_driver_first_trans_fast(t30);
    goto LAB8;

LAB12:    xsi_size_not_matching(128U, t29, 0);
    goto LAB13;

}

static void work_a_1846447040_0034035505_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (128 - 1);
    t4 = (t3 - 127);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 4032);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 3888);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1846447040_0034035505_init()
{
	static char *pe[] = {(void *)work_a_1846447040_0034035505_p_0,(void *)work_a_1846447040_0034035505_p_1};
	xsi_register_didat("work_a_1846447040_0034035505", "isim/tb_prng_isim_beh.exe.sim/work/a_1846447040_0034035505.didat");
	xsi_register_executes(pe);
}
