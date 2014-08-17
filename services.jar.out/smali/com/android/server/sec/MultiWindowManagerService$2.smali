.class Lcom/android/server/sec/MultiWindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1871
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1872
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$100(Lcom/android/server/sec/MultiWindowManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1873
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/sec/MultiWindowModule;->changeLockScreenStatus(Z)Z

    .line 1874
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z
    invoke-static {v6, v8}, Lcom/android/server/sec/MultiWindowManagerService;->access$302(Lcom/android/server/sec/MultiWindowManagerService;Z)Z

    .line 1875
    monitor-exit v7

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1875
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1876
    :cond_1
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1878
    :cond_2
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$100(Lcom/android/server/sec/MultiWindowManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1879
    :try_start_1
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/sec/MultiWindowModule;->changeLockScreenStatus(Z)Z

    .line 1880
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z
    invoke-static {v6, v8}, Lcom/android/server/sec/MultiWindowManagerService;->access$302(Lcom/android/server/sec/MultiWindowManagerService;Z)Z

    .line 1881
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/sec/MultiWindowManagerService;->getVisibleWindowList()Ljava/util/List;

    move-result-object v1

    .line 1882
    .local v1, cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_4

    .line 1883
    invoke-static {}, Lcom/android/server/sec/MultiWindowManagerService;->getSelf()Lcom/android/server/sec/MultiWindowManagerService;

    move-result-object v4

    .line 1884
    .local v4, s:Lcom/android/server/sec/MultiWindowManagerService;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1885
    .local v0, cn:Landroid/content/ComponentName;
    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v4}, Lcom/android/server/sec/MultiWindowManagerService;->access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1886
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_3

    .line 1889
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 1890
    .local v5, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_3

    .line 1891
    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1892
    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;
    invoke-static {v4}, Lcom/android/server/sec/MultiWindowManagerService;->access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowActionHandler;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    goto :goto_1

    .line 1897
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v4           #s:Lcom/android/server/sec/MultiWindowManagerService;
    .end local v5           #sub:Lcom/android/server/sec/MWClassItem;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .restart local v1       #cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1900
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    goto/16 :goto_0

    .line 1905
    .end local v1           #cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_5
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1906
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$100(Lcom/android/server/sec/MultiWindowManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1907
    :try_start_3
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService$2;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfAllWindows()V

    .line 1908
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 1909
    :cond_6
    const-string v6, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1912
    invoke-static {}, Lcom/android/server/sec/MultiWindowManagerService;->getSelf()Lcom/android/server/sec/MultiWindowManagerService;

    move-result-object v4

    .line 1913
    .restart local v4       #s:Lcom/android/server/sec/MultiWindowManagerService;
    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowManagerService;->maximizeAll()Z

    .line 1914
    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowManagerService;->callEnsureActivity()V

    goto/16 :goto_0
.end method
