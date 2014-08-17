.class Lcom/android/internal/policy/impl/PenDetachmentAlert;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"


# static fields
.field private static final LOSS_PREVENTION_ALERT_CHANGED:Ljava/lang/String; = "com.android.settings.LossPeventionAlertChanged"

.field static final TAG:Ljava/lang/String; = "PenDetachmentAlert"


# instance fields
.field private currentStepCount:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDialogShowed:Z

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mListenerRegistered:Z

.field mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

.field private mPenInserted:Z

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private previousStepCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 3
    .parameter "context"
    .parameter "keyguardMediator"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$1;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 188
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert$2;-><init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    .line 47
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    .line 48
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    .line 49
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->showDialog()V

    return-void
.end method

.method private playSoundOrVibration()V
    .locals 13

    .prologue
    .line 137
    const-string v0, "/system/media/audio/ui/Pen_det_beep1.ogg"

    .line 138
    .local v0, DETACH_ALERT_SOUND:Ljava/lang/String;
    const/16 v10, 0x38

    new-array v3, v10, [B

    fill-array-data v3, :array_0

    .line 150
    .local v3, ivt:[B
    const-string v10, "/system/media/audio/ui/Pen_det_beep1.ogg"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 151
    .local v9, soundUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 152
    .local v8, sfx:Landroid/media/Ringtone;
    iget-object v10, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 154
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v10, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 155
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    .line 157
    .local v4, mVibrator:Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 165
    .local v7, ringerMode:I
    :goto_0
    const/4 v10, 0x2

    if-ne v10, v7, :cond_2

    .line 166
    const/4 v10, 0x5

    :try_start_0
    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 167
    .local v5, masterStreamVolume:I
    int-to-float v10, v5

    const/high16 v11, 0x40e0

    div-float/2addr v10, v11

    const v11, 0x3e99999a

    mul-float v6, v10, v11

    .line 168
    .local v6, penSoundVolume:F
    if-eqz v8, :cond_1

    .line 169
    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 170
    invoke-virtual {v8}, Landroid/media/Ringtone;->play()V

    .line 171
    const-string v10, "PenDetachmentAlert"

    const-string v11, "playSoundOrVibration() : RINGER_MODE_NORMAL"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v5           #masterStreamVolume:I
    .end local v6           #penSoundVolume:F
    :goto_1
    return-void

    .line 161
    .end local v7           #ringerMode:I
    :cond_0
    const/4 v7, 0x2

    .restart local v7       #ringerMode:I
    goto :goto_0

    .line 173
    .restart local v5       #masterStreamVolume:I
    .restart local v6       #penSoundVolume:F
    :cond_1
    const-string v10, "PenDetachmentAlert"

    const-string v11, "playSoundOrVibration() : There are no ringtones"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    .end local v5           #masterStreamVolume:I
    .end local v6           #penSoundVolume:F
    :catch_0
    move-exception v2

    .line 184
    .local v2, exception:Ljava/lang/Exception;
    const-string v10, "PenDetachmentAlert"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playSoundOrVibration() : Exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v2           #exception:Ljava/lang/Exception;
    :cond_2
    const/4 v10, 0x1

    if-ne v10, v7, :cond_3

    .line 176
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Vibrator;->getMaxMagnitude()I

    move-result v10

    invoke-virtual {v4, v3, v10}, Landroid/os/Vibrator;->vibrateImmVibe([BI)V

    .line 177
    const-string v10, "PenDetachmentAlert"

    const-string v11, "playSoundOrVibration() : RINGER_MODE_VIBRATE"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :cond_3
    if-nez v7, :cond_4

    .line 179
    const-string v10, "PenDetachmentAlert"

    const-string v11, "playSoundOrVibration() : RINGER_MODE_SILENT"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    :cond_4
    const-string v10, "PenDetachmentAlert"

    const-string v11, "playSoundOrVibration() : unknown mode"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 138
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x3t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x19t
        0x0t
        0x21t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x0t
        0x64t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0x72t
        0xf1t
        0xe0t
        0x2t
        0xe2t
        0x1t
        0xd6t
        0xfft
        0x20t
        0x5t
        0x0t
        0x0t
        0x19t
        0x0t
        0x0t
        0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x61t
        0x0t
    .end array-data
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    .line 99
    .local v0, keyguardShowing:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    .line 102
    :cond_0
    if-eqz v0, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->show()V

    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->playSoundOrVibration()V

    .line 113
    :cond_1
    const-string v1, "PenDetachmentAlert"

    const-string v2, "Pen detachment alert dialog displayed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 118
    :cond_2
    return-void

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenDetachmentAlertDialog:Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDialogShowed()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    return v0
.end method

.method public getPenInserted()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    return v0
.end method

.method public resetPedometer()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->currentStepCount:I

    iput v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    .line 80
    return-void
.end method

.method public setDialogShowed(Z)V
    .locals 0
    .parameter "dialogShowed"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    .line 130
    return-void
.end method

.method public setPenInserted(Z)V
    .locals 0
    .parameter "penInserted"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z

    .line 122
    return-void
.end method

.method public startPedometer()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 64
    const-string v0, "PenDetachmentAlert"

    const-string v1, "registered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public stopPedometer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    .line 70
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mListenerRegistered:Z

    .line 71
    iput v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->previousStepCount:I

    .line 72
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z

    .line 73
    const-string v0, "PenDetachmentAlert"

    const-string v1, "unregistered SContextListener for pedometer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method
