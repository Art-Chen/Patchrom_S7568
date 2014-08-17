.class Landroid/net/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$1;,
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssocRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectState:Lcom/android/internal/util/State;

.field private mDormantState:Lcom/android/internal/util/State;

.field private mHandshakeState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lcom/android/internal/util/State;

.field private mUninitializedState:Lcom/android/internal/util/State;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    sput v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "wsm"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 74
    const-string v1, "SupplicantStateTracker"

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 49
    iput v3, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 50
    iput v3, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    .line 54
    iput-boolean v3, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 60
    iput-boolean v3, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 64
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 65
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 66
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 67
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 68
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 69
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 70
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 71
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v1, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 76
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 78
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 79
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 80
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 82
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 83
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 84
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 85
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 87
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 90
    :try_start_0
    const-string v1, "2"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->start()V

    .line 97
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "SupplicantStateTracker"

    const-string v2, "MAX_RETRIES_ON_AUTHENTICATION_FAILURE is 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/SupplicantStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 43
    sget v0, Landroid/net/wifi/SupplicantStateTracker;->MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I

    return v0
.end method

.method static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return v0
.end method

.method static synthetic access$302(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return p1
.end method

.method static synthetic access$308(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssocRejectCount:I

    return v0
.end method

.method static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private handleNetworkConnectionFailure(I)V
    .locals 1
    .parameter "netId"

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 106
    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 107
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 3
    .parameter "state"
    .parameter "failedAuth"

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    if-eqz p2, :cond_0

    .line 162
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getPromptCredentialsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "supplicantError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    .locals 4
    .parameter "stateChangeResult"

    .prologue
    .line 110
    iget-object v0, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 114
    .local v0, supState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 142
    :pswitch_6
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 146
    :pswitch_7
    iget-object v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
