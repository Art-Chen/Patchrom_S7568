.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0
    .parameter

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v8, 0x37

    const/4 v9, 0x0

    .line 2379
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 2380
    .local v5, token:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x834

    if-ne v6, v7, :cond_0

    .line 2381
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v6

    const/16 v7, 0x835

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2383
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    .line 2385
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2386
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v2

    .line 2387
    .local v2, mgr:Landroid/sec/multiwindow/IMultiWindowManager;
    const/4 v1, 0x0

    .line 2388
    .local v1, imw:Landroid/sec/multiwindow/IMultiWindow;
    const/4 v4, 0x0

    .line 2389
    .local v4, rect:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2390
    .local v3, pkgName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2391
    .local v0, clsName:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 2392
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    .line 2394
    :cond_1
    if-eqz v1, :cond_2

    .line 2395
    invoke-interface {v1}, Landroid/sec/multiwindow/IMultiWindow;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 2397
    :cond_2
    if-eqz v4, :cond_3

    .line 2398
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2399
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v5, v9, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 2410
    .end local v0           #clsName:Ljava/lang/String;
    .end local v1           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .end local v2           #mgr:Landroid/sec/multiwindow/IMultiWindowManager;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #rect:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2402
    .restart local v0       #clsName:Ljava/lang/String;
    .restart local v1       #imw:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #mgr:Landroid/sec/multiwindow/IMultiWindowManager;
    .restart local v3       #pkgName:Ljava/lang/String;
    .restart local v4       #rect:Landroid/graphics/Rect;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 2407
    .end local v0           #clsName:Ljava/lang/String;
    .end local v1           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .end local v2           #mgr:Landroid/sec/multiwindow/IMultiWindowManager;
    .end local v3           #pkgName:Ljava/lang/String;
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-virtual {v6, v5, v8, v9, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0
.end method
