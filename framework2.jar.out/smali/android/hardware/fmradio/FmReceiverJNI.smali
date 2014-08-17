.class public Landroid/hardware/fmradio/FmReceiverJNI;
.super Ljava/lang/Object;
.source "FmReceiverJNI.java"


# static fields
.field static final FM_JNI_FAILURE:I = -0x1

.field static final FM_JNI_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acquireFdNative(Ljava/lang/String;)I
.end method

.method static native cancelSearchNative(I)I
.end method

.method public static native closeFdNative(I)I
.end method

.method static native getBufferNative(I[BI)I
.end method

.method static native getControlNative(II)I
.end method

.method static native getFreqNative(I)I
.end method

.method static native getLowerBandNative(I)I
.end method

.method static native getRSSINative(I)I
.end method

.method static native getRawRdsNative(I[BI)I
.end method

.method static native setBandNative(III)I
.end method

.method public static native setControlNative(III)I
.end method

.method static native setFreqNative(II)I
.end method

.method static native setMonoStereoNative(II)I
.end method

.method static native setRegionNative(II)I
.end method

.method static native startSearchNative(IIIII)I
.end method
