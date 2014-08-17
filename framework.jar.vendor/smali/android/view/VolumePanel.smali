.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$LoadListener;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_BUTTON_OFF:I = 0x0

.field private static final EXTRA_BUTTON_ON:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentFMVol:I

.field static getCurrentVol:I

.field static mIsLoadSoundPool:Z

.field static mPrevFMVol:I

.field static mPrevVol:I

.field static mProgressChanged:Z


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    sput-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    .line 71
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 137
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 150
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 151
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 152
    sput v2, Landroid/view/VolumePanel;->getCurrentFMVol:I

    .line 153
    sput v2, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 155
    sput-boolean v2, Landroid/view/VolumePanel;->mProgressChanged:Z

    .line 221
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VideoCallStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 13
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 293
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 125
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 144
    new-array v6, v9, [[I

    new-array v7, v12, [I

    fill-array-data v7, :array_0

    aput-object v7, v6, v10

    iput-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 294
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 295
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 298
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 300
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x1090124

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 301
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v7, Landroid/view/VolumePanel$1;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x102045f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 308
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020460

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 309
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020462

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 310
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020461

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 312
    new-instance v6, Landroid/view/VolumePanel$2;

    const v7, 0x1030316

    invoke-direct {v6, p0, p1, v7}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 321
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v7, "Volume control"

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 323
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v7, Landroid/view/VolumePanel$3;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 331
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 332
    .local v5, window:Landroid/view/Window;
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 333
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 334
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v8, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 336
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 338
    const/16 v6, 0x7e4

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 339
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 340
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 342
    const v6, 0x40028

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 344
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v6

    new-array v6, v6, [Landroid/media/ToneGenerator;

    iput-object v6, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 345
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 347
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v9, v12, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 348
    iget-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Landroid/view/VolumePanel$LoadListener;

    invoke-direct {v7, p0, v8}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v6, v7}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 349
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    aget v8, v8, v10

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7, v1, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v9

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v1           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 356
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VolumePanel mVoiceCapable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 360
    iget-boolean v6, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v6, :cond_2

    .line 361
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :goto_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 368
    return-void

    .line 364
    :cond_2
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 144
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 469
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v4, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 472
    .local v1, res:Landroid/content/res/Resources;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_3

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    .line 473
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 474
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    .line 477
    const v4, 0x10802d0

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 478
    const v4, 0x10802d1

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 479
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10406dd

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 481
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 482
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 483
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_2

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 485
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 486
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    .line 493
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 494
    .local v3, streamType:I
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_5

    .line 491
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 497
    :cond_5
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 501
    :cond_6
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 502
    .restart local v2       #sc:Landroid/view/VolumePanel$StreamControl;
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 503
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 504
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 506
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 507
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 508
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_4

    .line 510
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 511
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 517
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v3           #streamType:I
    :cond_8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x168

    if-lt v4, v5, :cond_0

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_0

    .line 518
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 519
    .restart local v2       #sc:Landroid/view/VolumePanel$StreamControl;
    const v4, 0x10802d3

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 520
    const v4, 0x10802d4

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 521
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x10406e0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 524
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 525
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_9

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_9
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 528
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private collapse()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    .line 597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 598
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 599
    .local v4, streamType:I
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 600
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 601
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 607
    :goto_1
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/ExtSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v8}, Landroid/widget/ExtSeekBar;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0xd

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ExtSeekBar;->setPadding(IIII)V

    .line 611
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0x13

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0xcb

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 620
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v4           #streamType:I
    :cond_1
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 623
    .local v0, count:I
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_2

    .line 624
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 626
    :cond_2
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 403
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 405
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 406
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 407
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 408
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 409
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 410
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 411
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 412
    const v7, 0x1090125

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 413
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 414
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020464

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 415
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 416
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 417
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 418
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 419
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020463

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 421
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 423
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020465

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 424
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 428
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10203f6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ExtSeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    .line 430
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 432
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v8, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 433
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/ExtSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 434
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/ExtSeekBar;->setTag(Ljava/lang/Object;)V

    .line 435
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 430
    .end local v2           #plusOne:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_2
    return-void
.end method

.method private expand()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 561
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 562
    .local v0, count:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v7, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 563
    .local v2, last_sc:Landroid/view/VolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 568
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v5, v6, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 569
    .local v5, streamType:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VolumePanel$StreamControl;

    .line 570
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    move-object v2, v4

    .line 571
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 572
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 573
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x172

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 578
    :goto_2
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/ExtSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7}, Landroid/widget/ExtSeekBar;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v9}, Landroid/widget/ExtSeekBar;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ExtSeekBar;->setPadding(IIII)V

    .line 582
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 576
    :cond_1
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x10e

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 584
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamType:I
    :cond_2
    iget-object v6, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 594
    return-void
.end method

.method private forceTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 1059
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1060
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    const-string v0, "VolumePanel"

    const-string v1, "call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 956
    monitor-enter p0

    .line 957
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 959
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 967
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 962
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 399
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 384
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 396
    return-void
.end method

.method private phoneIsOffhook()Z
    .locals 6

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 262
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 264
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 265
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 270
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 271
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    return v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 6
    .parameter "activeStreamType"

    .prologue
    const/16 v5, 0x8

    .line 440
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 441
    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 443
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 444
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 445
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 465
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 466
    return-void

    .line 448
    :cond_0
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 450
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 452
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_2

    .line 453
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 455
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 456
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0

    .line 451
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1053
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 1054
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1055
    const-string v0, "VolumePanel"

    const-string v1, "call resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 977
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 978
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 979
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 980
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 981
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 982
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10802d2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    :cond_0
    :goto_1
    return-void

    .line 982
    :cond_1
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0

    .line 985
    :cond_2
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 6
    .parameter "sc"

    .prologue
    const v5, 0x10802d2

    const/4 v4, 0x0

    .line 536
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 538
    :cond_0
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 542
    :goto_0
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 543
    .local v0, muted:Z
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 548
    :cond_1
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    :cond_2
    return-void

    .line 540
    .end local v0           #muted:Z
    :cond_3
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    goto :goto_0

    .line 543
    .restart local v0       #muted:Z
    :cond_4
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 630
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 631
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 632
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 633
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public forceDismiss()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 1066
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1003
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1050
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1006
    :pswitch_1
    const-string v0, "VolumePanel"

    const-string v1, "change volume by MSG_VOLUME_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1012
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1017
    :pswitch_3
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "stop play sound by MSG_STOP_SOUNDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1023
    :pswitch_4
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "play sound by MSG_PLAY_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1035
    :pswitch_5
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, "VolumePanel"

    const-string v1, "dismiss by MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1038
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1043
    :pswitch_6
    const-string v0, "VolumePanel"

    const-string v1, "change mode by MSG_RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isExtraButtonOn()Z
    .locals 5

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 280
    .local v1, rtvalue:Z
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "extraVolume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, extraButtonOn:Ljava/lang/String;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 282
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const/4 v1, 0x1

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1111
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1112
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1114
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1115
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 991
    monitor-enter p0

    .line 992
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 993
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 996
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 992
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 998
    :cond_1
    monitor-exit p0

    .line 999
    return-void

    .line 998
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 891
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 894
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 897
    :cond_0
    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 900
    monitor-exit p0

    .line 926
    :goto_0
    return-void

    .line 902
    :cond_1
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_3

    .line 904
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v8, 0x0

    .local v8, effect:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 907
    .local v9, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 910
    .end local v9           #filePath:Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 916
    .end local v8           #effect:I
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 917
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 923
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 924
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 911
    .restart local v8       #effect:I
    :catch_0
    move-exception v7

    .line 913
    .local v7, e1:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 923
    .end local v7           #e1:Ljava/lang/InterruptedException;
    .end local v8           #effect:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1070
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1071
    .local v1, tag:Ljava/lang/Object;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    const-string/jumbo v3, "onProgressChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    if-eqz p3, :cond_6

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 1073
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1075
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1076
    :cond_1
    if-lez p2, :cond_2

    .line 1077
    add-int/lit8 p2, p2, -0x1

    .line 1079
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_4

    .line 1080
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "VolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_3
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1085
    :cond_4
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_6

    .line 1086
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_5
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1090
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_6
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1091
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 783
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 787
    .local v0, index:I
    :goto_0
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 789
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 790
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 798
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 862
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 863
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 864
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 865
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 867
    :cond_2
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 870
    :cond_3
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 871
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 872
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 874
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_4

    .line 875
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 877
    :cond_4
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 881
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 885
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 887
    :cond_6
    return-void

    .line 783
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_7
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0

    .line 802
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 804
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 805
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_RING.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 813
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_8

    .line 817
    const v4, 0x10802ca

    const v5, 0x10802cb

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 819
    :cond_8
    const v4, 0x10802d6

    const v5, 0x10802d7

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 831
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 832
    add-int/lit8 v1, v1, 0x1

    .line 833
    goto/16 :goto_1

    .line 841
    :pswitch_4
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 843
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 844
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_NOTIFICATION.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 856
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 1094
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    iget-boolean v0, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1096
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1104
    :cond_1
    :goto_0
    return-void

    .line 1099
    :pswitch_0
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 930
    monitor-enter p0

    .line 931
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 932
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 933
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 934
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 935
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 932
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 939
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 940
    return-void

    .line 939
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1107
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 950
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 12
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 653
    const/4 v4, 0x0

    .line 664
    .local v4, volume_index:I
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 668
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start_output_streamtype="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";start_output_streamvol="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 669
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_1

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", volume_index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_1
    if-nez p1, :cond_12

    .line 677
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 680
    .local v2, sc_voice:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 681
    if-eqz v2, :cond_3

    .line 682
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v5

    if-nez v5, :cond_3

    .line 683
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_2

    .line 684
    const-string v5, "VolumePanel"

    const-string v6, "Call setChangeSeekbarColor(true)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_2
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v9}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    .line 713
    .end local v2           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_3
    :goto_0
    if-ne p1, v11, :cond_6

    .line 714
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v3

    .line 715
    .local v3, volumeLimitIndex:I
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sput v5, Landroid/view/VolumePanel;->getCurrentFMVol:I

    .line 717
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "audioParam;curDevice"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, isMusicHPH:Ljava/lang/String;
    const-string v5, "HPH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget v5, Landroid/view/VolumePanel;->getCurrentFMVol:I

    if-lt v5, v3, :cond_5

    sget v5, Landroid/view/VolumePanel;->mPrevFMVol:I

    if-ge v5, v3, :cond_5

    .line 720
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_4

    const-string v5, "VolumePanel"

    const-string v6, "[Ear Shock] Show warning message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.EAR_PROTECT_TOAST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 725
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    sget v5, Landroid/view/VolumePanel;->getCurrentFMVol:I

    sput v5, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 728
    .end local v1           #isMusicHPH:Ljava/lang/String;
    .end local v3           #volumeLimitIndex:I
    :cond_6
    if-ne p1, v10, :cond_9

    .line 729
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v3

    .line 730
    .restart local v3       #volumeLimitIndex:I
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sput v5, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 732
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "audioParam;curDevice"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .restart local v1       #isMusicHPH:Ljava/lang/String;
    const-string v5, "HPH"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Landroid/view/VolumePanel;->getCurrentVol:I

    if-lt v5, v3, :cond_8

    sget v5, Landroid/view/VolumePanel;->mPrevVol:I

    if-ge v5, v3, :cond_8

    .line 735
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_7

    const-string v5, "VolumePanel"

    const-string v6, "[Ear Shock] Show warning message"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.EAR_PROTECT_TOAST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 740
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    sget v5, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v5, Landroid/view/VolumePanel;->mPrevVol:I

    .line 743
    .end local v1           #isMusicHPH:Ljava/lang/String;
    .end local v3           #volumeLimitIndex:I
    :cond_9
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_b

    .line 744
    iget v5, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    .line 745
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 750
    :cond_a
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 754
    :cond_b
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v5, :cond_d

    .line 761
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_c

    const-string v5, "VolumePanel"

    const-string v6, "VolumePanel onVolumeChanged call onPlaySound"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_c
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 763
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onPlaySound(II)V

    .line 768
    :cond_d
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_e

    .line 769
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 770
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 771
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 774
    :cond_e
    invoke-virtual {p0, v9}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 775
    invoke-virtual {p0, v9}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 777
    if-eqz p2, :cond_f

    .line 778
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 780
    :cond_f
    return-void

    .line 689
    .restart local v2       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_10
    if-eqz v2, :cond_3

    .line 690
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 691
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_11

    .line 692
    const-string v5, "VolumePanel"

    const-string v6, "Call setChangeSeekbarColor(false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_11
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_0

    .line 698
    .end local v2           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_12
    if-nez p1, :cond_13

    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v5

    if-nez v5, :cond_3

    .line 700
    :cond_13
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 702
    .restart local v2       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_3

    .line 703
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_14

    .line 704
    const-string v5, "VolumePanel"

    const-string v6, "Call setChangeSeekbarColor(false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_14
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 707
    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_0

    .line 747
    .end local v2           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_15
    iget v5, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, p1, :cond_a

    .line 748
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    goto/16 :goto_1
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 640
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 642
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 643
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
