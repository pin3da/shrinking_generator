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
static const char *ng0 = "/home/pin3da/Repos/shrinking_generator/modulorx.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1471672655_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    unsigned char t14;
    int t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    char *t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 3624);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 3704);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t9 = (t4 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t10 = *((int *)t6);
    t11 = (t10 == 1);
    if (t11 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 2);
    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:    goto LAB9;

LAB11:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1992U);
    t7 = *((char **)t2);
    t13 = *((int *)t7);
    t14 = (t13 >= 0);
    if (t14 == 1)
        goto LAB17;

LAB18:    t12 = (unsigned char)0;

LAB19:    if (t12 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t3 = (t10 == 0);
    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB12;

LAB14:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1512U);
    t17 = *((char **)t2);
    t18 = *((unsigned char *)t17);
    t2 = (t0 + 1992U);
    t19 = *((char **)t2);
    t20 = *((int *)t19);
    t21 = (t20 - 7);
    t22 = (t21 * -1);
    t23 = (1 * t22);
    t24 = (0U + t23);
    t2 = (t0 + 3832);
    t25 = (t2 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t18;
    xsi_driver_first_trans_delta(t2, t24, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t10 = *((int *)t2);
    t13 = (t10 - 1);
    t1 = (t0 + 3704);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t13;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t2 = (t0 + 1992U);
    t8 = *((char **)t2);
    t15 = *((int *)t8);
    t16 = (t15 <= 7);
    t12 = t16;
    goto LAB19;

LAB20:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3896);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3768);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB21;

LAB23:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3704);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3896);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB24;

}


extern void work_a_1471672655_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1471672655_3212880686_p_0};
	xsi_register_didat("work_a_1471672655_3212880686", "isim/tb_prng_isim_beh.exe.sim/work/a_1471672655_3212880686.didat");
	xsi_register_executes(pe);
}
