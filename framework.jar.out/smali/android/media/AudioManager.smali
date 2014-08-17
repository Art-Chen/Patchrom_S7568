.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FocusEventHandlerDelegate;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;
    }
.end annotation


# static fields
.field public static final A2DPCONNECTED:Ljava/lang/String; = "audioParam;a2dpconnected"

.field public static final A2DPPLAYING:Ljava/lang/String; = "audioParam;a2dpplaying"

.field public static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final ADJUST_LOWER:I = -0x1

.field public static final ADJUST_RAISE:I = 0x1

.field public static final ADJUST_SAME:I = 0x0

.field public static final AF:Ljava/lang/String; = "situation=4"

.field public static final AUDIOFOCUS_GAIN:I = 0x1

.field public static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final AUDIOFOCUS_LOSS:I = -0x1

.field public static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final BOOTSOUND:Ljava/lang/String; = "situation=8"

.field public static final CALL_CONNECTION:Ljava/lang/String; = "situation=14"

.field public static final CAMCORDING_START:Ljava/lang/String; = "situation=5"

.field public static final CAMCORDING_STOP:Ljava/lang/String; = "situation=5"

.field public static final DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_DEFAULT:I = 0x10000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final EAR_PROTECT_DEFAULT_INDEX:I = 0x9

.field public static EAR_PROTECT_LIMIT_INDEX_DISABLE:I = 0x0

.field public static EAR_PROTECT_LIMIT_INDEX_NORMAL:I = 0x0

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_GENERATION:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_GENERATION"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_INFO_CHANGED"

.field public static final EXTRA_REMOTE_CONTROL_CLIENT_NAME:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_CLIENT_NAME"

.field public static final EXTRA_REMOTE_CONTROL_EVENT_RECEIVER:Ljava/lang/String; = "android.media.EXTRA_REMOTE_CONTROL_EVENT_RECEIVER"

.field public static final EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_FORCE_STREAM:I = 0x20

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_SILENT_MODE_STATE:I = 0x80

.field public static final FLAG_UDATE_STATE:I = 0x40

.field public static final FLAG_VIBRATE:I = 0x10

.field public static final FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final FX_KEYPRESS_DELETE:I = 0x7

.field public static final FX_KEYPRESS_RETURN:I = 0x8

.field public static final FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final FX_KEYPRESS_STANDARD:I = 0x5

.field public static final FX_KEY_CLICK:I = 0x0

.field public static final HEADSET_VOLUME:Ljava/lang/String; = ";device=2"

.field public static final IMPLICIT:Ljava/lang/String; = ";device=0"

.field public static final KEYBOARD:Ljava/lang/String; = "situation=2"

.field public static final KEY_TONE:Ljava/lang/String; = "situation=0"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_VIDEOCALL:I = 0x4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final NUM_SOUND_EFFECTS:I = 0x13

.field public static final NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OUTDEVICE:Ljava/lang/String; = "audioParam;outDevice"

.field public static final RECORD_ACTIVE:Ljava/lang/String; = "isRecordActive"

.field public static final REMOTE_CONTROL_CLIENT_CHANGED:Ljava/lang/String; = "android.media.REMOTE_CONTROL_CLIENT_CHANGED"

.field public static final RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field private static final RINGER_MODE_MAX:I = 0x2

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SA_DUMP_OFF:I = 0x200

.field public static final SA_DUMP_ON:I = 0x400

.field public static final SA_GET_PUMP_DATA:I = 0x20

.field public static final SA_GET_VISUALIZATION_DATA:I = 0x8

.field public static final SA_SET_EXTENDED_PARAM:I = 0x80

.field public static final SA_SET_PRESET:I = 0x1

.field public static final SA_SET_PUMP:I = 0x10

.field public static final SA_SET_SPEED:I = 0x40

.field public static final SA_SET_USEREQ_DATA:I = 0x2

.field public static final SA_SET_VISUALIZATION:I = 0x4

.field public static final SA_ULP_DUMP_OFF:I = 0x100

.field public static final SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final SHUTTER_1:Ljava/lang/String; = "situation=3"

.field public static final SHUTTER_2:Ljava/lang/String; = "situation=9"

.field public static final SHUTTER_3:Ljava/lang/String; = "situation=10"

.field public static final SITUATION_MIDI:Ljava/lang/String; = "situation=6"

.field public static final SOUNDALIVE_PRESET_BASS_BOOST:I = 0x7

.field public static final SOUNDALIVE_PRESET_CAFE:I = 0xb

.field public static final SOUNDALIVE_PRESET_CLASSIC:I = 0x5

.field public static final SOUNDALIVE_PRESET_CONCERT_HALL:I = 0xc

.field public static final SOUNDALIVE_PRESET_DANCE:I = 0x3

.field public static final SOUNDALIVE_PRESET_EXTERNALIZATION:I = 0xa

.field public static final SOUNDALIVE_PRESET_JAZZ:I = 0x4

.field public static final SOUNDALIVE_PRESET_MOVIE:I = 0xf

.field public static final SOUNDALIVE_PRESET_MTHEATER:I = 0x9

.field public static final SOUNDALIVE_PRESET_NORMAL:I = 0x0

.field public static final SOUNDALIVE_PRESET_POP:I = 0x1

.field public static final SOUNDALIVE_PRESET_ROCK:I = 0x2

.field public static final SOUNDALIVE_PRESET_SAMSUNG_TUBE_SOUND:I = 0x11

.field public static final SOUNDALIVE_PRESET_SRS_SURROUND_MUSIC:I = 0x12

.field public static final SOUNDALIVE_PRESET_SRS_SURROUND_VIDEO:I = 0x14

.field public static final SOUNDALIVE_PRESET_SRS_WOWHD:I = 0x13

.field public static final SOUNDALIVE_PRESET_TREBLE_BOOST:I = 0x8

.field public static final SOUNDALIVE_PRESET_USER:I = 0xd

.field public static final SOUNDALIVE_PRESET_VIRT51:I = 0x10

.field public static final SOUNDALIVE_PRESET_VOCAL:I = 0x6

.field public static final SOUNDALIVE_PRESET_VOICE:I = 0xe

.field public static final SOUND_BATTERY_CAUTION:I = 0xd

.field public static final SOUND_CALL_DISCONNECT:I = 0x10

.field public static final SOUND_CHARGER_CONNECTION:I = 0xe

.field public static final SOUND_GLASS_UNLOCK:I = 0xa

.field public static final SOUND_HW_TOUCH:I = 0x12

.field public static final SOUND_INSERT:I = 0xf

.field public static final SOUND_LOW_BATTERY:I = 0xc

.field public static final SOUND_MIN_INDEX:I = 0x9

.field public static final SOUND_OPERATION_MAX_INDEX:I = 0x11

.field public static final SOUND_OPERATION_MIN_INDEX:I = 0xa

.field public static final SOUND_PUZZLE_UNLOCK:I = 0xb

.field public static final SOUND_SILENT_MODE_OFF:I = 0x11

.field public static final SOUND_TOUCH:I = 0x9

.field public static final SPEAKER_VOLUME:Ljava/lang/String; = ";device=1"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_FM_RADIO:I = 0xa

.field public static final STREAM_HPH_FM_RADIO:I = 0xe

.field public static final STREAM_HPH_MUSIC:I = 0xd

.field public static final STREAM_HPH_TTS:I = 0xf

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SEC_VOICE_COMMUNICATION:I = 0xc

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VIDEO_CALL:I = 0xb

.field public static final STREAM_VOICE_CALL:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TONE_HIPRI:Ljava/lang/String; = "situation=16"

.field public static final TONE_LOPRI:Ljava/lang/String; = "situation=15"

.field public static final TOUCH_TONE:Ljava/lang/String; = "situation=1"

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field private static final VIBRATE_SETTING_MAX:I = 0x2

.field public static final VIBRATE_SETTING_OFF:I = 0x0

.field public static final VIBRATE_SETTING_ON:I = 0x1

.field public static final VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field private static final VIBRATE_TYPE_MAX:I = 0x1

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I = 0x0

.field public static final VIDEO:Ljava/lang/String; = "situation=7"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static localLOGV:Z

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

.field private mAudioFocusIdListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFocusListenerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mICallBack:Landroid/os/IBinder;

.field private mVolumeControlStream:I

.field private mVolumeKeyUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 55
    const-string v0, "AudioManager"

    sput-object v0, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/AudioManager;->localLOGV:Z

    .line 214
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 1468
    sput v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    .line 1469
    const/16 v0, 0xa

    sput v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    return-void

    .line 214
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 426
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 1951
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    .line 1957
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    .line 1966
    new-instance v0, Landroid/media/AudioManager$FocusEventHandlerDelegate;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    .line 2005
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 2362
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 427
    iput-object p1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    .line 428
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mHandler:Landroid/os/Handler;

    .line 429
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusEventHandlerDelegate:Landroid/media/AudioManager$FocusEventHandlerDelegate;

    return-object v0
.end method

.method private findFocusListener(Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "id"

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public static getActiveStreamType()I
    .locals 5

    .prologue
    .line 1070
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1071
    .local v2, service:Landroid/media/IAudioService;
    const/high16 v1, -0x8000

    .line 1073
    .local v1, nReturn:I
    const/high16 v3, -0x8000

    :try_start_0
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getActiveStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1077
    :goto_0
    return v1

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getActiveStreamType"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getEarProtectLimitIndex()I
    .locals 5

    .prologue
    .line 2489
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2490
    .local v2, service:Landroid/media/IAudioService;
    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 2492
    .local v1, nReturn:I
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isEarProtectLimitOn()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_NORMAL:I

    .line 2496
    :goto_0
    return v1

    .line 2492
    :cond_0
    sget v1, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isEarProtectLimitOn"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 5
    .parameter "l"

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x24

    .line 2015
    if-nez p1, :cond_0

    .line 2016
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2018
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 433
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 434
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 438
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 436
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 437
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 438
    sget-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method public static isEarProtectLimitOn()Z
    .locals 5

    .prologue
    .line 2506
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 2507
    .local v2, service:Landroid/media/IAudioService;
    const/4 v0, 0x0

    .line 2509
    .local v0, bReturn:Z
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isEarProtectLimitOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2513
    :goto_0
    return v0

    .line 2510
    :catch_0
    move-exception v1

    .line 2511
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isEarProtectLimitOn"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isMediaSilentMode()Z
    .locals 5

    .prologue
    .line 1090
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1091
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1093
    .local v1, nReturn:Z
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->isMediaSilentMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1097
    :goto_0
    return v1

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isMediaSilentMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isValidRingerMode(I)Z
    .locals 1
    .parameter "ringerMode"

    .prologue
    .line 690
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 691
    :cond_0
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ismVoiceCapable()Z
    .locals 5

    .prologue
    .line 1101
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 1102
    .local v2, service:Landroid/media/IAudioService;
    const/4 v1, 0x0

    .line 1104
    .local v1, nReturn:Z
    :try_start_0
    invoke-interface {v2}, Landroid/media/IAudioService;->ismVoiceCapable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1108
    :goto_0
    return v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in ismVoiceCapable"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private querySoundEffectsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1853
    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sound_effects_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setMediaSilentMode(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1081
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1083
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/media/IAudioService;->setMediaSilentMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 6
    .parameter "l"

    .prologue
    .line 2103
    const/4 v2, 0x0

    .line 2104
    .local v2, status:I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2105
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2107
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2112
    :goto_0
    return v2

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call abandonAudioFocus() from AudioService due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 604
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 606
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 4
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 656
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 658
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 4
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 630
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 632
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->adjustVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in adjustVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dismissVolumePanel()V
    .locals 4

    .prologue
    .line 2521
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2523
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2527
    :goto_0
    return-void

    .line 2524
    :catch_0
    move-exception v0

    .line 2525
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in dismissVolumePanel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceVolumeControlStream(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 897
    iput p1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 898
    return-void
.end method

.method public getDevicesForStream(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 2468
    packed-switch p1, :pswitch_data_0

    .line 2478
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2476
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    goto :goto_0

    .line 2468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 749
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 751
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 754
    :goto_0
    return v2

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getLastAudibleStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 1453
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1455
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1458
    :goto_0
    return v2

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1458
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keys"

    .prologue
    .line 1662
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingerMode()I
    .locals 4

    .prologue
    .line 672
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 674
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->getRingerMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 677
    :goto_0
    return v2

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getRouting(I)I
    .locals 1
    .parameter "mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1579
    const/4 v0, -0x1

    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 704
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 706
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 709
    :goto_0
    return v2

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamMaxVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 722
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 724
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 727
    :goto_0
    return v2

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolumeForce(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 733
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 735
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getStreamVolumeForce(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 738
    :goto_0
    return v2

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 943
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 945
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 948
    :goto_0
    return v2

    .line 946
    :catch_0
    move-exception v0

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in getVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public handleKeyDown(II)V
    .locals 10
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 475
    sparse-switch p1, :sswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 482
    :sswitch_0
    const/16 v0, 0x11

    .line 483
    .local v0, flags:I
    iget v7, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v7, v6, :cond_0

    .line 484
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 485
    or-int/lit8 v0, v0, 0x20

    .line 487
    :cond_0
    const/16 v7, 0x18

    if-ne p1, v7, :cond_1

    :goto_1
    invoke-virtual {p0, v5, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 496
    .end local v0           #flags:I
    :sswitch_1
    const/4 v1, 0x1

    .line 497
    .local v1, flags2:I
    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v4

    .line 498
    .local v4, streamType:I
    invoke-static {}, Landroid/media/AudioManager;->ismVoiceCapable()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x3

    if-eq v4, v8, :cond_6

    .line 499
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 500
    .local v3, ringerMode:I
    if-eq v3, v9, :cond_4

    .line 501
    invoke-virtual {p0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 523
    :goto_2
    iget v5, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v5, v6, :cond_3

    .line 524
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 525
    or-int/lit8 v1, v1, 0x20

    .line 528
    :cond_3
    invoke-virtual {p0, v7, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    .line 503
    :cond_4
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 519
    invoke-virtual {p0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 505
    :pswitch_0
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 508
    :pswitch_1
    iget-object v8, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_in_silent"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v5, :cond_5

    .line 510
    invoke-virtual {p0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 512
    :cond_5
    invoke-virtual {p0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 531
    .end local v3           #ringerMode:I
    :cond_6
    invoke-static {}, Landroid/media/AudioManager;->isMediaSilentMode()Z

    move-result v6

    if-nez v6, :cond_7

    :goto_3
    invoke-static {v5}, Landroid/media/AudioManager;->setMediaSilentMode(Z)V

    goto :goto_0

    :cond_7
    move v5, v7

    goto :goto_3

    .line 541
    .end local v1           #flags2:I
    .end local v4           #streamType:I
    :sswitch_2
    const/16 v2, 0x11

    .line 542
    .local v2, flags3:I
    iget v7, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    if-eq v7, v6, :cond_8

    .line 543
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 544
    or-int/lit8 v2, v2, 0x20

    .line 546
    :cond_8
    const/16 v7, 0xa8

    if-ne p1, v7, :cond_9

    :goto_4
    invoke-virtual {p0, v5, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_0

    :cond_9
    move v5, v6

    goto :goto_4

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_1
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
    .end sparse-switch

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleKeyUp(II)V
    .locals 3
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 560
    sparse-switch p1, :sswitch_data_0

    .line 585
    :goto_0
    return-void

    .line 569
    :sswitch_0
    const/4 v0, 0x4

    .line 570
    .local v0, flags:I
    iget v1, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 571
    iget p2, p0, Landroid/media/AudioManager;->mVolumeControlStream:I

    .line 572
    or-int/lit8 v0, v0, 0x20

    .line 574
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v0}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 1315
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    const/4 v0, 0x0

    .line 1319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 4

    .prologue
    .line 1291
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1293
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isBluetoothScoOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1296
    :goto_0
    return v2

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isExtraSpeakerDockOn()Z
    .locals 2

    .prologue
    .line 1388
    const/16 v0, 0x800

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1392
    const/4 v0, 0x0

    .line 1394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFMActive()Z
    .locals 2

    .prologue
    .line 1597
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 1418
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 2

    .prologue
    .line 1588
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .locals 4

    .prologue
    .line 1041
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1043
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isRadioSpeakerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1046
    :goto_0
    return v2

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isRecordActive()Z
    .locals 2

    .prologue
    .line 1607
    const-string/jumbo v1, "isRecordActive"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    .local v0, isRecordActive:Ljava/lang/String;
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1609
    const/4 v1, 0x1

    .line 1611
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSilentMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2374
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2375
    .local v0, ringerMode:I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 2378
    .local v1, silentMode:Z
    :cond_0
    :goto_0
    return v1

    .line 2375
    .end local v1           #silentMode:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .prologue
    .line 1004
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1006
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1009
    :goto_0
    return v2

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 4
    .parameter "streamType"

    .prologue
    .line 880
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 882
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 885
    :goto_0
    return v2

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in isStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVoiceCallActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1620
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 2

    .prologue
    .line 1370
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    const/4 v0, 0x0

    .line 1376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadSoundEffects()V
    .locals 5

    .prologue
    .line 1862
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1864
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :goto_0
    return-void

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in loadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectType"

    .prologue
    .line 1794
    if-ltz p1, :cond_0

    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioManager;->querySoundEffectsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1810
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1812
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->playSoundEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1813
    :catch_0
    move-exception v0

    .line 1814
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundEffect(IF)V
    .locals 5
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1837
    if-ltz p1, :cond_0

    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1843
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in playSoundEffect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preDispatchKeyEvent(II)V
    .locals 4
    .parameter "keyCode"
    .parameter "stream"

    .prologue
    .line 458
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 466
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, p2, v1}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 469
    :cond_0
    return-void
.end method

.method public registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 2030
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2031
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    monitor-exit v1

    .line 2036
    :goto_0
    return-void

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "eventReceiver"

    .prologue
    const/4 v4, 0x0

    .line 2126
    if-nez p1, :cond_0

    .line 2141
    :goto_0
    return-void

    .line 2129
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2130
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2135
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2138
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2140
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2148
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2149
    :cond_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :goto_0
    return-void

    .line 2152
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2155
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 5
    .parameter "rcClient"

    .prologue
    .line 2199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2202
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2204
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IAudioService;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2208
    :catch_0
    move-exception v0

    .line 2209
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .parameter "rcd"

    .prologue
    .line 2238
    if-nez p1, :cond_0

    .line 2247
    :goto_0
    return-void

    .line 2241
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2243
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2244
    :catch_0
    move-exception v0

    .line 2245
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in registerRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reloadAudioSettings()V
    .locals 5

    .prologue
    .line 2351
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2353
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2357
    :goto_0
    return-void

    .line 2354
    :catch_0
    move-exception v0

    .line 2355
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in reloadAudioSettings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2276
    if-nez p1, :cond_0

    .line 2285
    :goto_0
    return-void

    .line 2279
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2281
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in remoteControlDisplayUsesBitmapSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 10
    .parameter "l"
    .parameter "streamType"
    .parameter "durationHint"

    .prologue
    .line 2077
    const/4 v8, 0x0

    .line 2078
    .local v8, status:I
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/4 v1, 0x3

    if-le p3, v1, :cond_1

    .line 2080
    :cond_0
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v2, "Invalid duration hint, audio focus request denied"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2093
    .end local v8           #status:I
    .local v9, status:I
    :goto_0
    return v9

    .line 2083
    .end local v9           #status:I
    .restart local v8       #status:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 2085
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2087
    .local v0, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_1
    move v9, v8

    .line 2093
    .end local v8           #status:I
    .restart local v9       #status:I
    goto :goto_0

    .line 2090
    .end local v9           #status:I
    .restart local v8       #status:I
    :catch_0
    move-exception v7

    .line 2091
    .local v7, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t call requestAudioFocus() from AudioService due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBluetoothA2dpForceOn(Z)V
    .locals 5
    .parameter "on"

    .prologue
    .line 1335
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1338
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1340
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothA2dpForceOn transfer value is same with current one! value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_0
    return-void

    .line 1343
    :cond_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothA2dpForceOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothA2dpForceOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 0
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1306
    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1276
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1278
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setBluetoothScoOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 1409
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1410
    return-void
.end method

.method public setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1437
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1439
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    :goto_0
    return-void

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1641
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValuePairs"

    .prologue
    .line 1651
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1652
    return-void
.end method

.method public setRadioSpeakerOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1026
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1028
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRadioSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    return-void

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRadioSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReceiverOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1051
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1053
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setReceiverOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setReceiverOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingerMode(I)V
    .locals 4
    .parameter "ringerMode"

    .prologue
    .line 770
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 779
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 775
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setRingerMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setRingerMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRouting(III)V
    .locals 0
    .parameter "mode"
    .parameter "routes"
    .parameter "mask"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1566
    return-void
.end method

.method public setSpeakerMediaOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 442
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 444
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerMediaOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerMediaOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSpeakerOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1060
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1062
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 990
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 992
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setSpeakerphoneOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamMute(IZ)V
    .locals 4
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 866
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 868
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamMute(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamMute"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamSolo(IZ)V
    .locals 4
    .parameter "streamType"
    .parameter "state"

    .prologue
    .line 837
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 839
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, p2, v2}, Landroid/media/IAudioService;->setStreamSolo(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamSolo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 4
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 792
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 794
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolumeForce(III)V
    .locals 4
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 802
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 804
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolumeForce(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolumeWithOutChange(III)V
    .locals 4
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 810
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 812
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setStreamVolumeWithOutChange(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setStreamVolumeForce"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateSetting(II)V
    .locals 5
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 969
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 970
    .local v1, service:Landroid/media/IAudioService;
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    if-ltz p2, :cond_0

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    .line 971
    :cond_0
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrong value in setVibrateSetting vibrateType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vibrateSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setVibrateSetting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 0
    .parameter "on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1358
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 918
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 920
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 923
    :goto_0
    return v2

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in shouldVibrate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 923
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startBluetoothSco()V
    .locals 4

    .prologue
    .line 1240
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1242
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    :goto_0
    return-void

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in startBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopBluetoothSco()V
    .locals 4

    .prologue
    .line 1258
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1260
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in stopBluetoothSco"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 5

    .prologue
    .line 1876
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1878
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    :goto_0
    return-void

    .line 1879
    :catch_0
    move-exception v0

    .line 1880
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unloadSoundEffects"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 2046
    iget-object v1, p0, Landroid/media/AudioManager;->mFocusListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2047
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    monitor-exit v1

    .line 2049
    return-void

    .line 2048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "eventReceiver"

    .prologue
    const/4 v3, 0x0

    .line 2167
    if-nez p1, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 2171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2173
    .local v0, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2174
    iget-object v2, p0, Landroid/media/AudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2176
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "pi"
    .parameter "eventReceiver"

    .prologue
    .line 2183
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2185
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/IAudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    :goto_0
    return-void

    .line 2186
    :catch_0
    move-exception v0

    .line 2187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterMediaButtonIntent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 5
    .parameter "rcClient"

    .prologue
    .line 2220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return-void

    .line 2223
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2225
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getIRemoteControlClient()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v0

    .line 2228
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 5
    .parameter "rcd"

    .prologue
    .line 2255
    if-nez p1, :cond_0

    .line 2264
    :goto_0
    return-void

    .line 2258
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 2260
    .local v1, service:Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2261
    :catch_0
    move-exception v0

    .line 2262
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/media/AudioManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dead object in unregisterRemoteControlDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
