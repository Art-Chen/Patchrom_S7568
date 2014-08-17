.class public final Landroid/sec/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/MultiWindowManager$1;,
        Landroid/sec/multiwindow/MultiWindowManager$_handler;,
        Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    }
.end annotation


# static fields
.field private static final EX_CLASS_NAME:Ljava/lang/String; = "mwExtraClassName"

.field private static final EX_PACKAGE_NAME:Ljava/lang/String; = "mwExtraPackageName"

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static isUseMultiWindow:Ljava/lang/Boolean;

.field private static mActionPair:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/sec/multiwindow/MultiWindowKey;",
            "Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelf:Landroid/sec/multiwindow/MultiWindowManager;

.field private static mService:Landroid/sec/multiwindow/IMultiWindowService;


# instance fields
.field private mContext:Landroid/content/Context;

.field mwADialog:Landroid/sec/mwdialog/MWAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 1

    .prologue
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    const-string v0, "multiwindow"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowManager;

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    iput-object p0, v0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    :cond_1
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    goto :goto_0
.end method

.method private static getService()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 2

    .prologue
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "multiwindow"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    sput-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    goto :goto_0
.end method

.method private initFreestyleModeLayout(Landroid/app/Activity;)Z
    .locals 22
    .parameter "activity"

    .prologue
    const/4 v13, 0x0

    .local v13, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, componentName:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .local v11, myWindow:Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .local v8, myDecoView:Landroid/view/View;
    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[sendResumeAction]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .local v7, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v2, v1}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;I)V

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v2, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .local v9, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v7, :cond_0

    const-string v19, "MultiWindowManager"

    const-string v20, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .end local v9           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #result:Z
    .local v14, result:I
    :goto_0
    return v14

    .end local v14           #result:I
    .restart local v13       #result:Z
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NullPointerException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v14, v13

    .restart local v14       #result:I
    goto :goto_0

    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v14           #result:I
    :catch_1
    move-exception v4

    .local v4, e3:Landroid/os/RemoteException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onResumeAction - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .restart local v14       #result:I
    goto :goto_0

    .end local v4           #e3:Landroid/os/RemoteException;
    .end local v14           #result:I
    .restart local v9       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v19, 0x10203d6

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .local v16, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v19, 0x10203d7

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .local v12, overWrapFrame:Landroid/widget/LinearLayout;
    const v19, 0x10203dd

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .local v17, windowResize:Landroid/widget/ImageButton;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v6, 0x0

    .local v6, minimizeButton:Landroid/widget/ImageButton;
    const/4 v5, 0x0

    .local v5, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_1

    const v19, 0x10203de

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .local v18, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v19, 0x10203e2

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v6, Landroid/widget/ImageButton;

    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    const v19, 0x10203e1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v5, Landroid/widget/ImageButton;

    .end local v18           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v19, 0x1080547

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .local v10, myRect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v15

    .local v15, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_3

    invoke-virtual {v15, v9}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v13, 0x1

    :cond_3
    move v14, v13

    .restart local v14       #result:I
    goto/16 :goto_0

    .end local v10           #myRect:Landroid/graphics/Rect;
    .end local v14           #result:I
    .end local v15           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v19, 0x108053a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v19, 0x108053a

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1
.end method

.method private initSplitMode(Landroid/app/Activity;)Z
    .locals 26
    .parameter "activity"

    .prologue
    const/16 v17, 0x0

    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .local v3, componentName:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    .local v13, myWindow:Landroid/view/Window;
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    .local v10, myDecoView:Landroid/view/View;
    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[sendResumeAction]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", activity TASK ID : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;I)V

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v3, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindowWithTaskId(Landroid/content/ComponentName;I)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .local v11, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v9, :cond_0

    const-string v23, "MultiWindowManager"

    const-string v24, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .end local v11           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #result:Z
    .local v18, result:I
    :goto_0
    return v18

    .end local v18           #result:I
    .restart local v17       #result:Z
    :catch_0
    move-exception v5

    .local v5, e3:Landroid/os/RemoteException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onResumeAction - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .restart local v18       #result:I
    goto :goto_0

    .end local v5           #e3:Landroid/os/RemoteException;
    .end local v18           #result:I
    :catch_1
    move-exception v4

    .local v4, e:Ljava/lang/NullPointerException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v18, v17

    .restart local v18       #result:I
    goto :goto_0

    .end local v4           #e:Ljava/lang/NullPointerException;
    .end local v18           #result:I
    .restart local v11       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v23, 0x10203d6

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .local v21, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v23, 0x10203d7

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .local v15, overWrapFrame:Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .local v8, minimizeButton:Landroid/widget/ImageButton;
    const/4 v7, 0x0

    .local v7, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_1

    const v23, 0x10203de

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .local v22, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v23, 0x10203e2

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v8, Landroid/widget/ImageButton;

    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    const v23, 0x10203e1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v7, Landroid/widget/ImageButton;

    .end local v22           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v12

    .local v12, myRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v14

    .local v14, orientation:I
    const v23, 0x10203d8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .local v6, l:Landroid/widget/ImageButton;
    const v23, 0x10203d9

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    .local v19, t:Landroid/widget/ImageButton;
    const v23, 0x10203db

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .local v16, r:Landroid/widget/ImageButton;
    const v23, 0x10203da

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .local v2, b:Landroid/widget/ImageButton;
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-nez v23, :cond_9

    rem-int/lit8 v23, v14, 0x2

    if-nez v23, :cond_7

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v20

    .local v20, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v17, 0x1

    :cond_3
    move/from16 v18, v17

    .restart local v18       #result:I
    goto/16 :goto_0

    .end local v2           #b:Landroid/widget/ImageButton;
    .end local v6           #l:Landroid/widget/ImageButton;
    .end local v12           #myRect:Landroid/graphics/Rect;
    .end local v14           #orientation:I
    .end local v16           #r:Landroid/widget/ImageButton;
    .end local v18           #result:I
    .end local v19           #t:Landroid/widget/ImageButton;
    .end local v20           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :catch_2
    move-exception v23

    goto/16 :goto_1

    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_5
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v2       #b:Landroid/widget/ImageButton;
    .restart local v6       #l:Landroid/widget/ImageButton;
    .restart local v12       #myRect:Landroid/graphics/Rect;
    .restart local v14       #orientation:I
    .restart local v16       #r:Landroid/widget/ImageButton;
    .restart local v19       #t:Landroid/widget/ImageButton;
    :cond_6
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v23, 0x4

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    const/16 v23, 0x6

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->splitMode:I

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v23, -0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3
.end method

.method private static isMultiWindowServiceEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowServiceEnabled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode remote error (hasSpliteMode): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isMultiWindowServiceEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    if-nez p0, :cond_0

    move v1, v0

    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #result:I
    goto :goto_0

    .end local v1           #result:I
    :cond_1
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled()Z

    move-result v0

    move v1, v0

    .restart local v1       #result:I
    goto :goto_0
.end method

.method private static readConfig(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->arrangeWindows(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public capture(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, p1, v4}, Landroid/sec/multiwindow/IMultiWindowService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->exchangeSplitScreens()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAllWindow()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->finishAllWindow()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAppPid(I)Z
    .locals 5
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->finishAppPid(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    check-cast v0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    .restart local v0       #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;-><init>(Landroid/sec/multiwindow/MultiWindowManager;Landroid/app/Activity;)V

    .restart local v0       #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMultiLayout()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiLayout()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getMultiWindowList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .local v0, Items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .local v2, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getMultiWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMultiWindowList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowListOwnerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwnerList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;
    .locals 5

    .prologue
    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .local v1, result:Landroid/sec/multiwindow/MultiWindowType;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowType()I

    move-result v3

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .local v2, result:Landroid/sec/multiwindow/MultiWindowType;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getPinupWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getResumedWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getRunningWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getRunningWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSplitList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getSplitList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .end local v2           #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .restart local v2       #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .restart local v2       #result:Ljava/lang/Object;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getVisibleWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getVisibleWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 2
    .parameter "componentName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    return-object v1
.end method

.method public getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .local v1, res:Landroid/sec/multiwindow/MultiWindow;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    move-object v2, v1

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .local v2, res:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return-object v2

    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered is a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0

    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_1
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    .local v3, winType:Landroid/sec/multiwindow/MultiWindowType;
    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Landroid/sec/multiwindow/MultiWindow;

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Landroid/sec/multiwindow/MultiWindow;-><init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V

    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_2
    move-object v2, v1

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->isPermissionOff()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isRunning(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isVisible(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyFinished(Landroid/app/Activity;)Z
    .locals 6
    .parameter "selfActivity"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->notifyFinished(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifyForceFinished(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifySIP(I)Z
    .locals 5
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifySIP(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyStarted(Landroid/app/Activity;)Z
    .locals 11
    .parameter "selfActivity"

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    .local v6, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v8

    sget-object v9, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v8, v9, :cond_0

    move v7, v6

    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .local v5, myWindow:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .local v4, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v8, v10, :cond_1

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v8, v10, :cond_2

    :cond_1
    move v7, v6

    .restart local v7       #result:I
    goto :goto_0

    .end local v7           #result:I
    :cond_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_3

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v8, v9, :cond_4

    :cond_3
    invoke-virtual {p0, v1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_4

    :try_start_0
    new-instance v8, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-direct {v8, v1, v9}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v8}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-interface {v8, v1, v0, v9}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v6

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-interface {v8, v1, v9}, Landroid/sec/multiwindow/IMultiWindowService;->notifyStarted(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    :cond_4
    move v7, v6

    .restart local v7       #result:I
    goto :goto_0

    .end local v7           #result:I
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "MultiWindowManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .restart local v7       #result:I
    goto :goto_0

    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v7           #result:I
    :catch_1
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "MultiWindowManager"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .restart local v7       #result:I
    goto :goto_0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 5
    .parameter "cName"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->orientationChangeRestore(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v2           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public postResume(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->postResume(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Landroid/sec/multiwindow/IMultiWindow;
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .local v2, result:Landroid/sec/multiwindow/IMultiWindow;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;II)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v2, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow2 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;IIZ)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "componentName"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"

    .prologue
    const/4 v2, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow3 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;Ljava/util/List;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 10
    .parameter "componentName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/sec/multiwindow/IMultiWindow;"
        }
    .end annotation

    .prologue
    .local p2, windowSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v9, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .local v2, item:Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_1

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #item:Landroid/graphics/Point;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .local v4, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, p1, v3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_4

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registerMultiWindow4 fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 5
    .parameter "componentName"
    .parameter "mwListener"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public sendCreateAction(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .local v4, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v6

    sget-object v7, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v6, v7, :cond_0

    move v5, v4

    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .local v3, pid:I
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    new-instance v6, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v6}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-interface {v6, v1, v0, v7}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .end local v3           #pid:I
    :cond_1
    move v5, v4

    .restart local v5       #result:I
    goto :goto_0

    .end local v5           #result:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v4

    .restart local v5       #result:I
    goto :goto_0

    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v5           #result:I
    :catch_1
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v6, "MultiWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendCreateAction - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .restart local v5       #result:I
    goto :goto_0
.end method

.method public sendDestroyAction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    const/4 v0, 0x0

    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    new-instance v5, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->destroyActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_1
    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public sendFinishAction(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v5, v6, :cond_0

    move v4, v3

    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    const/4 v0, 0x0

    .local v0, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v5, Landroid/sec/multiwindow/MultiWindowManager;->mActionPair:Ljava/util/HashMap;

    new-instance v6, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/sec/multiwindow/IMultiWindowService;->finishActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :cond_1
    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v4           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v2

    .local v2, ef:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_2

    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .restart local v4       #result:I
    goto :goto_0
.end method

.method public sendPauseAction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, componentName:Landroid/content/ComponentName;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sendPauseAction]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/sec/multiwindow/IMultiWindowService;->pauseChangeInformation(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public sendResumeAction(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    move v1, v0

    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #result:I
    goto :goto_0

    .end local v1           #result:I
    :cond_1
    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    .restart local v1       #result:I
    goto :goto_0

    .end local v1           #result:I
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initSplitMode(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initFreestyleModeLayout(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendStartAction(Landroid/app/Activity;)Z
    .locals 12
    .parameter "activity"

    .prologue
    const/4 v6, 0x0

    .local v6, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v9

    sget-object v10, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v9, v10, :cond_0

    move v7, v6

    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-interface {v9, v1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .local v5, pid:I
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-interface {v9, v1, v5}, Landroid/sec/multiwindow/IMultiWindowService;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    new-instance v9, Landroid/sec/multiwindow/MultiWindowKey;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-direct {v9, v1, v10}, Landroid/sec/multiwindow/MultiWindowKey;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v9}, Landroid/sec/multiwindow/MultiWindowManager;->getAction(Landroid/sec/multiwindow/MultiWindowKey;)Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    move-result-object v0

    .local v0, action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->updateActivity(Landroid/app/Activity;)V

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-interface {v9, v1, v0, v10}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .local v8, sAction:Ljava/lang/String;
    const-string v9, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .local v4, isMiniMode:Z
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v9

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-interface {v9, v1, v10, v4}, Landroid/sec/multiwindow/IMultiWindowService;->startMultiWindowWithTaskId(Landroid/content/ComponentName;IZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .end local v0           #action:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #isMiniMode:Z
    .end local v5           #pid:I
    .end local v8           #sAction:Ljava/lang/String;
    :cond_1
    move v7, v6

    .restart local v7       #result:I
    goto :goto_0

    .end local v7           #result:I
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NullPointerException;
    const-string v9, "MultiWindowManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v6

    .restart local v7       #result:I
    goto :goto_0

    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v7           #result:I
    :catch_1
    move-exception v2

    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v9, "MultiWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendStartAction - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .restart local v7       #result:I
    goto/16 :goto_0
.end method

.method public setMultiLayout(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiLayout(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setMultiWindowMode(Landroid/sec/multiwindow/MultiWindowType;)Z
    .locals 5
    .parameter "winType"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object p1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-virtual {p1}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiWindowType(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setPreferenceValue(Z)V
    .locals 3
    .parameter "b"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setPreferenceValue(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showSwitchWindowGuideDialog(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/multiwindow/IMultiWindowService;->showSwitchWindowGuideDialog()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLauncher()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    const/4 v1, 0x1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    const/4 v1, 0x1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWAlertDialog;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .local v0, mwDialog:Landroid/sec/mwdialog/MWAlertDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    move v2, v1

    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v2, v3, :cond_0

    const-string v2, "MultiWindowManager"

    const-string v3, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    iget-boolean v2, v2, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Landroid/sec/mwdialog/MWAlertDialog;

    invoke-direct {v2, p1, p2}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    invoke-virtual {v2}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    const/4 v3, 0x0

    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v4           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 6
    .parameter "Left"
    .parameter "Right"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    const/4 v2, 0x0

    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intentRight:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startSplitScreens] Right : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v3           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    const/4 v3, 0x0

    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    invoke-interface {v5}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/sec/multiwindow/MultiWindowManager;->showSwitchWindowGuideDialog(Landroid/content/Context;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v4           #result:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .restart local v4       #result:I
    goto :goto_0
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
