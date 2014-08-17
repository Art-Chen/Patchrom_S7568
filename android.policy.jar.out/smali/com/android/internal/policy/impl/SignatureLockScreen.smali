.class public Lcom/android/internal/policy/impl/SignatureLockScreen;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;,
        Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DBG_TOUCH:Z = false

.field private static final MAX_SIGNATURE_ATTEMPTS:I = 0x2

.field private static final REGISTRED_SIGNATURE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SignatureLockScreen"

.field private static mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;


# instance fields
.field private mBoundToSignService:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEngineStarted:Z

.field private mFailedAttempts:I

.field private mGuideText:Ljava/lang/String;

.field private mHelpText:Landroid/widget/TextView;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSignService:Lcom/android/internal/policy/ISignServiceInterface;

.field private final mSignServiceRunningLock:Ljava/lang/Object;

.field private mSignView:Lcom/android/internal/widget/SignView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerificationLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 16
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 75
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    .line 76
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    .line 374
    new-instance v4, Lcom/android/internal/policy/impl/SignatureLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/internal/policy/impl/SignatureLockScreen$1;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 94
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 95
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 96
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 98
    move-object/from16 v0, p2

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    .line 102
    const/4 v15, 0x0

    .line 103
    .local v15, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 104
    .local v11, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v15

    .line 105
    const-string v4, "SignatureLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentLockScreenString() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const v4, 0x1020385

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 108
    .local v14, statement:Landroid/widget/TextView;
    if-eqz v14, :cond_0

    .line 109
    if-eqz v15, :cond_2

    .line 110
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v11           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14           #statement:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusable(Z)V

    .line 124
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setFocusableInTouchMode(Z)V

    .line 125
    const/high16 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->setDescendantFocusability(I)V

    .line 127
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 128
    .local v13, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 130
    const v4, 0x109008c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 140
    :goto_1
    const v4, 0x102039d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mRootLayout:Landroid/widget/FrameLayout;

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v12, 0x1

    .line 145
    .local v12, helpTextEnabled:Z
    :goto_2
    if-eqz v12, :cond_5

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104069b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    .line 150
    :goto_3
    const v4, 0x10203a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v4, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v9, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 158
    new-instance v4, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 163
    const v4, 0x102039e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 173
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    .line 175
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/SignatureLockScreen;->initSignView(Landroid/content/Context;)V

    .line 178
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v4, :cond_1

    .line 179
    const-string v4, "SignatureLockScreen"

    const-string v5, "sign service is called from constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 183
    :cond_1
    return-void

    .line 115
    .end local v12           #helpTextEnabled:Z
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    .restart local v11       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14       #statement:Landroid/widget/TextView;
    :cond_2
    const/16 v4, 0x8

    :try_start_1
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 118
    .end local v11           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v10

    .line 119
    .local v10, e:Ljava/lang/Exception;
    const-string v4, "SignatureLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM Exception Statement :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    const v4, 0x109008d

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1

    .line 143
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 148
    .restart local v12       #helpTextEnabled:Z
    :cond_5
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SignatureLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/internal/policy/impl/SignatureLockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/ISignServiceInterface;)Lcom/android/internal/policy/ISignServiceInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/widget/SignView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SignatureLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/SignatureLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mEngineStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SignatureLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mGuideText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SignatureLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SignatureLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private initSignView(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 186
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 188
    const v0, 0x102039f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SignView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    .line 190
    const/16 v0, 0x15

    new-array v13, v0, [I

    .line 191
    .local v13, properties:[I
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/LockPatternUtils;->getLockSignatureCorrnidates([I)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SignView;->setVerifySign()V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_signature_verification_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mVerificationLevel:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setVerificationLevel(I)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x7

    aget v2, v13, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSettingInputType(I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/4 v2, 0x6

    aget v2, v13, v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setStrokeCount(I)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setSignatureVisible(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    new-instance v2, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/SignatureLockScreen$UnlockSignatureLister;-><init>(Lcom/android/internal/policy/impl/SignatureLockScreen;Lcom/android/internal/policy/impl/SignatureLockScreen$1;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v0, 0x8

    aget v0, v13, v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/SignView;->enableBezierCurve(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    const/16 v1, 0x9

    aget v1, v13, v1

    const/16 v2, 0xa

    aget v2, v13, v2

    const/16 v3, 0xb

    aget v3, v13, v3

    const/16 v4, 0xc

    aget v4, v13, v4

    const/16 v5, 0xd

    aget v5, v13, v5

    const/16 v6, 0xe

    aget v6, v13, v6

    const/16 v7, 0xf

    aget v7, v13, v7

    const/16 v8, 0x10

    aget v8, v13, v8

    const/16 v9, 0x11

    aget v9, v13, v9

    const/16 v10, 0x12

    aget v10, v13, v10

    const/16 v11, 0x13

    aget v11, v13, v11

    const/16 v12, 0x14

    aget v12, v13, v12

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/widget/SignView;->setThresholdValues(IIIIIIIIIIII)V

    .line 217
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindToSignatureLock()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 372
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const-string v0, "SignatureLockScreen"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    .line 296
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 300
    iput-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignView:Lcom/android/internal/widget/SignView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SignView;->setOnSignatureListener(Lcom/android/internal/widget/SignView$OnSignatureListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v1, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return v1

    .line 226
    :cond_0
    const-string v0, ""

    .line 227
    .local v0, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 231
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSignatureRecognitionFailed()Z
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 263
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 273
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 355
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 312
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 315
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 330
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 278
    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mBoundToSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mSignService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mSignService:Lcom/android/internal/policy/ISignServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 284
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SignatureLockScreen;->bindToSignatureLock()V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mBoundToSignService:Z

    .line 288
    :cond_0
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 344
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 335
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 339
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 244
    :pswitch_1
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_1

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN, ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    if-ne v0, v1, :cond_0

    .line 247
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    goto :goto_0

    .line 253
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/policy/impl/SignatureLockScreen;->DBG_TOUCH:Z

    if-eqz v0, :cond_0

    const-string v0, "SignatureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/SignatureLockScreen;->mState:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
