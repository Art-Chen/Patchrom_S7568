.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 32
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 864
    const/4 v5, 0x1

    .line 865
    .local v5, handled:Z
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v26

    .line 868
    .local v26, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v27

    .line 869
    .local v27, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 871
    .local v4, action:I
    if-eqz v4, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 875
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 876
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 883
    .local v21, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v21, :cond_1

    .line 884
    monitor-exit v29

    goto :goto_0

    .line 1043
    .end local v21           #targetWin:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v28

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 887
    .restart local v21       #targetWin:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x834

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 893
    .local v6, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 894
    .local v25, windows:Ljava/util/ArrayList;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v15, subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v12, revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v13, Ljava/util/Stack;

    invoke-direct {v13}, Ljava/util/Stack;-><init>()V

    .line 897
    .local v13, stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 898
    .local v3, N:I
    const/16 v23, 0x0

    .line 899
    .local v23, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v17, 0x0

    .line 900
    .local v17, subTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/16 v16, 0x0

    .line 901
    .local v16, subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    const/4 v14, 0x0

    .line 902
    .local v14, subTargetWin:Lcom/android/server/wm/WindowState;
    const/16 v24, 0x0

    .line 903
    .local v24, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v9, v3, -0x1

    .local v9, j:I
    :goto_1
    if-ltz v9, :cond_e

    .line 905
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #win:Lcom/android/server/wm/WindowState;
    check-cast v24, Lcom/android/server/wm/WindowState;

    .line 907
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v30, 0x834

    move/from16 v0, v28

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    .line 903
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 914
    :cond_2
    move-object/from16 v23, v24

    .line 915
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 916
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 917
    .local v7, id:I
    if-gez v7, :cond_4

    .line 918
    const-string v28, "WindowManager"

    const-string v30, "    no targetWin in mWindows!!"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/16 v23, 0x0

    .line 925
    :goto_2
    if-eqz v23, :cond_e

    .line 929
    add-int/lit8 v18, v7, -0x1

    .line 930
    .local v18, subUnderWinIndex:I
    :goto_3
    if-ltz v18, :cond_3

    .line 931
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 932
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 940
    :cond_3
    :goto_4
    invoke-virtual {v13}, Ljava/util/Stack;->empty()Z

    move-result v28

    if-nez v28, :cond_6

    .line 941
    invoke-virtual {v13}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 942
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 922
    .end local v18           #subUnderWinIndex:I
    :cond_4
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 935
    .restart local v18       #subUnderWinIndex:I
    :cond_5
    invoke-virtual {v13, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 938
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 944
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v19, v7, v28

    .line 947
    .local v19, subUpperWinIndex:I
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :goto_5
    move/from16 v0, v19

    if-gt v0, v3, :cond_7

    .line 951
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 952
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 961
    :cond_7
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "subTargetWinList = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v10, 0x0

    .local v10, k:I
    :goto_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v10, v0, :cond_9

    .line 963
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v28, v10

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 964
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 955
    .end local v10           #k:I
    :cond_8
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 956
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 968
    .restart local v10       #k:I
    :cond_9
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    .line 969
    .local v22, topIndex:I
    :goto_7
    move/from16 v0, v22

    if-gt v0, v3, :cond_a

    .line 970
    add-int/lit8 v28, v22, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 971
    .restart local v17       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    if-eqz v17, :cond_a

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 972
    move-object/from16 v16, v17

    .line 973
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 978
    :cond_a
    if-eqz v16, :cond_b

    .line 979
    move-object/from16 v23, v16

    .line 983
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v30, 0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    .line 984
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "revSubTargetWinList.size() = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/safelog/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 986
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 987
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    .line 988
    .local v20, subWinAtList:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_8

    .line 991
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/wm/WindowState;>;"
    .end local v20           #subWinAtList:Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 995
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 1043
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v12           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v13           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v15           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v18           #subUnderWinIndex:I
    .end local v19           #subUpperWinIndex:I
    .end local v22           #topIndex:I
    .end local v23           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    .end local v25           #windows:Ljava/util/ArrayList;
    :cond_e
    :goto_9
    monitor-exit v29

    goto/16 :goto_0

    .line 1004
    .restart local v3       #N:I
    .restart local v6       #i:I
    .restart local v9       #j:I
    .restart local v12       #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v13       #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .restart local v14       #subTargetWin:Lcom/android/server/wm/WindowState;
    .restart local v15       #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v16       #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v17       #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v23       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v24       #win:Lcom/android/server/wm/WindowState;
    .restart local v25       #windows:Ljava/util/ArrayList;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_9

    .line 1017
    .end local v3           #N:I
    .end local v6           #i:I
    .end local v9           #j:I
    .end local v12           #revSubTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v13           #stack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/android/server/wm/WindowState;>;"
    .end local v14           #subTargetWin:Lcom/android/server/wm/WindowState;
    .end local v15           #subTargetWinList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v16           #subTempTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v17           #subTopWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v23           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v24           #win:Lcom/android/server/wm/WindowState;
    .end local v25           #windows:Ljava/util/ArrayList;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 1027
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1028
    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 1029
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    if-eqz v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 1030
    :cond_12
    monitor-exit v29

    goto/16 :goto_0

    .line 1033
    :cond_13
    const-string v28, "WindowManager"

    const-string v30, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "targetWin >> "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v28, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mCurrentFocus >> "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v28, v0

    const/16 v30, 0x19

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1038
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9
.end method
