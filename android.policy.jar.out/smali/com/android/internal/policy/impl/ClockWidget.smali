.class public Lcom/android/internal/policy/impl/ClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$Charge;,
        Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;,
        Lcom/android/internal/policy/impl/ClockWidget$Clock;,
        Lcom/android/internal/policy/impl/ClockWidget$Weather;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private static mContext:Landroid/content/Context;

.field private static mOwnerInfo:Landroid/widget/TextView;

.field private static mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# instance fields
.field private mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

.field private mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

.field private mCreationOrientation:I

.field private mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mStartMarquee:Ljava/lang/Runnable;

.field private mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "configuration"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    sput-object p1, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    .line 86
    sput-object p2, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 87
    iget v3, p3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    .line 88
    sput-object p4, Lcom/android/internal/policy/impl/ClockWidget;->mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 93
    const v3, 0x1090055

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    :goto_0
    const v3, 0x10202b7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    .line 101
    const v3, 0x10202b8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    .line 102
    const v3, 0x10202ba

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$Clock;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    .line 103
    const v3, 0x10202d7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$Weather;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    .line 104
    const v3, 0x10202df

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/ClockWidget$Charge;

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    .line 105
    const v3, 0x10202e3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sput-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    .line 108
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isPLMNEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setVisibility(I)V

    .line 117
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_screen_owner_info_enabled"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 119
    .local v2, ownerInfoEnabled:Z
    :goto_2
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 120
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_screen_owner_info"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, ownerInfo:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v1           #ownerInfo:Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/ClockWidget$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    .line 132
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void

    .line 96
    .end local v2           #ownerInfoEnabled:Z
    :cond_2
    const v3, 0x1090056

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 117
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Clock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mClockCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Charge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    return-object v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->isEmergencyCallCapable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mOwnerInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/ClockWidget;)Lcom/android/internal/policy/impl/ClockWidget$Weather;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    return-object v0
.end method

.method private static isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1621
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1622
    sget-object v0, Lcom/android/internal/policy/impl/ClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1625
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    const-string v0, ""

    .line 210
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v1, "ClockWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$100(Lcom/android/internal/policy/impl/ClockWidget$Clock;Z)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Charge;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->access$300(Lcom/android/internal/policy/impl/ClockWidget$Charge;Z)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Weather;->setMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->access$500(Lcom/android/internal/policy/impl/ClockWidget$Weather;Z)V

    .line 168
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 1618
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget;->setBatteryInfo()V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->onResume()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mWeather:Lcom/android/internal/policy/impl/ClockWidget$Weather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 147
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mStartMarquee:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/ClockWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSprintDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshCMASInfo()V

    .line 160
    :cond_2
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mEmergencyCall:Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 1612
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->chooseClockType()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1200(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mClock:Lcom/android/internal/policy/impl/ClockWidget$Clock;

    #calls: Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshTime()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->access$1300(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    .line 1614
    return-void
.end method

.method public refreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 183
    return-void
.end method

.method public setBatteryInfo()V
    .locals 4

    .prologue
    .line 190
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    .line 191
    .local v2, showBatteryInfo:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    .line 192
    .local v1, pluggedIn:Z
    sget-object v3, Lcom/android/internal/policy/impl/ClockWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    .line 195
    .local v0, batteryLevel:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget;->mCharger:Lcom/android/internal/policy/impl/ClockWidget$Charge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/internal/policy/impl/ClockWidget$Charge;->refreshBatteryInfo(ZZI)V

    .line 196
    return-void
.end method
