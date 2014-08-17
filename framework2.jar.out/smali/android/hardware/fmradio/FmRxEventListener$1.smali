.class Landroid/hardware/fmradio/FmRxEventListener$1;
.super Ljava/lang/Thread;
.source "FmRxEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmRxEventListener;->startListener(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmRxEventListener;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmRxEventListener;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->this$0:Landroid/hardware/fmradio/FmRxEventListener;

    iput p2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$fd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    const/16 v2, 0x80

    new-array v0, v2, [B

    .line 71
    .local v0, buff:[B
    iget v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$fd:I

    invoke-static {v2, v0, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .line 72
    .local v1, i:I
    const-string v2, "FMRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> event. Int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    aget-byte v2, v0, v5

    packed-switch v2, :pswitch_data_0

    .line 140
    const-string v2, "FMRadio"

    const-string v3, "Unknown event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :pswitch_0
    const-string v2, "FMRadio"

    const-string v3, "Got READY_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvEnableReceiver()V

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v2, "FMRadio"

    const-string v3, "Got TUNE_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v3, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$fd:I

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRadioTuneStatus(I)V

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v2, "FMRadio"

    const-string v3, "Got SEEK_COMPLETE_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    iget v3, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$fd:I

    invoke-static {v3}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchComplete(I)V

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v2, "FMRadio"

    const-string v3, "Got SCAN_NEXT_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchInProgress()V

    goto :goto_0

    .line 93
    :pswitch_4
    const-string v2, "FMRadio"

    const-string v3, "Got RAW_RDS_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsGroupData()V

    goto/16 :goto_0

    .line 97
    :pswitch_5
    const-string v2, "FMRadio"

    const-string v3, "Got RT_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsRtInfo()V

    goto/16 :goto_0

    .line 101
    :pswitch_6
    const-string v2, "FMRadio"

    const-string v3, "Got PS_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsPsInfo()V

    goto/16 :goto_0

    .line 105
    :pswitch_7
    const-string v2, "FMRadio"

    const-string v3, "Got ERROR_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 108
    :pswitch_8
    const-string v2, "FMRadio"

    const-string v3, "Got BELOW_TH_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_0

    .line 112
    :pswitch_9
    const-string v2, "FMRadio"

    const-string v3, "Got ABOVE_TH_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvServiceAvailable(Z)V

    goto/16 :goto_0

    .line 116
    :pswitch_a
    const-string v2, "FMRadio"

    const-string v3, "Got STEREO_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_0

    .line 120
    :pswitch_b
    const-string v2, "FMRadio"

    const-string v3, "Got MONO_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvStereoStatus(Z)V

    goto/16 :goto_0

    .line 124
    :pswitch_c
    const-string v2, "FMRadio"

    const-string v3, "Got RDS_AVAL_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v6}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_0

    .line 128
    :pswitch_d
    const-string v2, "FMRadio"

    const-string v3, "Got RDS_NOT_AVAL_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2, v5}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsLockStatus(Z)V

    goto/16 :goto_0

    .line 132
    :pswitch_e
    const-string v2, "FMRadio"

    const-string v3, "Got NEW_SRCH_LIST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvSearchListComplete()V

    goto/16 :goto_0

    .line 136
    :pswitch_f
    const-string v2, "FMRadio"

    const-string v3, "Got NEW_AF_LIST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Landroid/hardware/fmradio/FmRxEventListener$1;->val$cb:Landroid/hardware/fmradio/FmRxEvCallbacks;

    invoke-interface {v2}, Landroid/hardware/fmradio/FmRxEvCallbacks;->FmRxEvRdsAfInfo()V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
