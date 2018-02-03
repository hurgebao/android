.class public Lui/home/AppLoadViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "AppLoadViewModel.java"


# instance fields
.field private isLoading:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/content/pm/PackageManager;

.field private final queryPublisher:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetApps:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 29
    new-instance v2, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lui/home/AppLoadViewModel;->isLoading:Landroid/arch/lifecycle/MutableLiveData;

    .line 32
    new-instance v2, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lui/home/AppLoadViewModel;->targetApps:Landroid/arch/lifecycle/MutableLiveData;

    .line 33
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v2

    iput-object v2, p0, Lui/home/AppLoadViewModel;->queryPublisher:Lio/reactivex/subjects/BehaviorSubject;

    .line 38
    invoke-virtual {p0}, Lui/home/AppLoadViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lui/home/AppLoadViewModel;->pm:Landroid/content/pm/PackageManager;

    .line 40
    iget-object v2, p0, Lui/home/AppLoadViewModel;->isLoading:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 41
    iget-object v2, p0, Lui/home/AppLoadViewModel;->targetApps:Landroid/arch/lifecycle/MutableLiveData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 45
    iget-object v2, p0, Lui/home/AppLoadViewModel;->queryPublisher:Lio/reactivex/subjects/BehaviorSubject;

    .line 46
    invoke-virtual {v2}, Lio/reactivex/subjects/BehaviorSubject;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v2

    const-wide/16 v4, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v2, v4, v5, v3}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 49
    .local v1, "debounce":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Ljava/lang/String;>;"
    new-instance v2, Lui/home/AppLoadViewModel$1;

    invoke-direct {v2, p0}, Lui/home/AppLoadViewModel$1;-><init>(Lui/home/AppLoadViewModel;)V

    invoke-static {v2}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v2

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    .local v0, "appInfoPublisher":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    new-instance v2, Lui/home/AppLoadViewModel$3;

    invoke-direct {v2, p0}, Lui/home/AppLoadViewModel$3;-><init>(Lui/home/AppLoadViewModel;)V

    invoke-static {v1, v0, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v2

    .line 64
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 65
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lui/home/AppLoadViewModel$2;

    invoke-direct {v3, p0}, Lui/home/AppLoadViewModel$2;-><init>(Lui/home/AppLoadViewModel;)V

    .line 66
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 90
    const-string v2, ""

    invoke-virtual {p0, v2}, Lui/home/AppLoadViewModel;->setFilter(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lui/home/AppLoadViewModel;->isLoading:Landroid/arch/lifecycle/MutableLiveData;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lui/home/AppLoadViewModel;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lui/home/AppLoadViewModel;

    .prologue
    .line 27
    iget-object v0, p0, Lui/home/AppLoadViewModel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lui/home/AppLoadViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lui/home/AppLoadViewModel;

    .prologue
    .line 27
    iget-object v0, p0, Lui/home/AppLoadViewModel;->targetApps:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$200(Lui/home/AppLoadViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lui/home/AppLoadViewModel;

    .prologue
    .line 27
    iget-object v0, p0, Lui/home/AppLoadViewModel;->isLoading:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$300(Lui/home/AppLoadViewModel;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;
    .locals 1
    .param p0, "x0"    # Lui/home/AppLoadViewModel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lui/home/AppLoadViewModel;->getHistoryAndFilteredApps(Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryAndFilteredApps(Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/util/Pair;
    .locals 9
    .param p1, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v5, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 99
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "hist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    sget-object v7, Lui/home/AppHistory;->INSTANCE:Lui/home/AppHistory;

    invoke-virtual {v7}, Lui/home/AppHistory;->getHistory()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lui/home/History;

    .line 104
    .local v1, "h":Lui/home/History;
    invoke-virtual {v1}, Lui/home/History;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    invoke-virtual {v1}, Lui/home/History;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v1    # "h":Lui/home/History;
    :cond_2
    invoke-static {v2, p2}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v7

    .line 119
    .end local v2    # "hist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ApplicationInfo;>;"
    :goto_2
    return-object v7

    .line 112
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "lowerCaseFilter":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v6, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 115
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p0, Lui/home/AppLoadViewModel;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 116
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 119
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v6}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v7

    goto :goto_2
.end method


# virtual methods
.method public getIsLoading()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lui/home/AppLoadViewModel;->isLoading:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTargetApps()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lui/home/AppLoadViewModel;->targetApps:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lui/home/AppLoadViewModel;->queryPublisher:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 125
    return-void
.end method
