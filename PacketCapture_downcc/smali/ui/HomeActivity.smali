.class public final Lui/HomeActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/HomeActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/HomeActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "NoRootFW"


# instance fields
.field private final REQ_APP_CHOOSER:I

.field private final REQ_PERMISSION_WRITE_STORAGE_ALL:I

.field private final REQ_PERMISSION_WRITE_STORAGE_ONE:I

.field private final REQ_VPN_PERMISSION:I

.field private forceShowAsRunning:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lui/HomeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/HomeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/HomeActivity;->Companion:Lui/HomeActivity$Companion;

    .line 254
    const-string v0, "NoRootFW"

    sput-object v0, Lui/HomeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lui/HomeActivity;->REQ_VPN_PERMISSION:I

    .line 34
    const/16 v0, 0x65

    iput v0, p0, Lui/HomeActivity;->REQ_APP_CHOOSER:I

    .line 35
    const/16 v0, 0xc8

    iput v0, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ALL:I

    .line 36
    const/16 v0, 0xc9

    iput v0, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ONE:I

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lui/HomeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$rescheduleButtonUpdate(Lui/HomeActivity;I)V
    .locals 0
    .param p0, "$this"    # Lui/HomeActivity;
    .param p1, "delay"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lui/HomeActivity;->rescheduleButtonUpdate(I)V

    return-void
.end method

.method public static final synthetic access$setForceShowAsRunning$p(Lui/HomeActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lui/HomeActivity;
    .param p1, "<set-?>"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lui/HomeActivity;->forceShowAsRunning:Z

    return-void
.end method

.method public static final synthetic access$updateStartButtons(Lui/HomeActivity;)V
    .locals 0
    .param p0, "$this"    # Lui/HomeActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lui/HomeActivity;->updateStartButtons()V

    return-void
.end method

.method private final handleStartButton(Z)V
    .locals 6
    .param p1, "startOne"    # Z

    .prologue
    .line 140
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "permissionCheck":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v2, p0

    .line 142
    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v4, v3

    if-eqz p1, :cond_0

    iget v3, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ONE:I

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/support/v13/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 151
    :goto_1
    return-void

    .line 142
    :cond_0
    iget v3, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ALL:I

    goto :goto_0

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    .line 147
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lui/home/AppsListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lui/HomeActivity;->REQ_APP_CHOOSER:I

    invoke-virtual {p0, v0, v2}, Lui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lui/HomeActivity;->startCapture(Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private final rescheduleButtonUpdate(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lui/HomeActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    :cond_0
    iget-object v0, p0, Lui/HomeActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    :cond_1
    return-void
.end method

.method private final startCapture(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/Integer;

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 169
    if-eqz p1, :cond_0

    .line 170
    sget-object v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->setCaptureTarget(I)V

    .line 171
    invoke-virtual {p0}, Lui/HomeActivity;->setupVpn()V

    .line 172
    iput-boolean v2, p0, Lui/HomeActivity;->forceShowAsRunning:Z

    .line 173
    invoke-direct {p0}, Lui/HomeActivity;->updateStartButtons()V

    .line 174
    invoke-direct {p0, v3}, Lui/HomeActivity;->rescheduleButtonUpdate(I)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lapp/greyshirts/firewall/proxy/CaptureTarget;->INSTANCE:Lapp/greyshirts/firewall/proxy/CaptureTarget;

    invoke-virtual {v0}, Lapp/greyshirts/firewall/proxy/CaptureTarget;->clearCaptureTarget()V

    .line 177
    invoke-virtual {p0}, Lui/HomeActivity;->setupVpn()V

    .line 178
    iput-boolean v2, p0, Lui/HomeActivity;->forceShowAsRunning:Z

    .line 179
    invoke-direct {p0}, Lui/HomeActivity;->updateStartButtons()V

    .line 180
    invoke-direct {p0, v3}, Lui/HomeActivity;->rescheduleButtonUpdate(I)V

    goto :goto_0
.end method

.method private final updateStartButtons()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lui/HomeActivity;->supportInvalidateOptionsMenu()V

    .line 186
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 235
    .line 236
    iget v2, p0, Lui/HomeActivity;->REQ_VPN_PERMISSION:I

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_0

    move-object v2, p0

    .line 237
    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v2

    const-string v3, "User accepted the VPN connection. It\'s ready to start"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lapp/greyshirts/firewall/app/MyVpnService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cmd"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lui/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v2, p0, Lui/HomeActivity;->REQ_APP_CHOOSER:I

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 243
    invoke-static {p3}, Lui/home/AppsListActivity;->getActivityResult(Landroid/content/Intent;)Lui/home/AppsListActivity$ActivityResult;

    move-result-object v1

    .line 244
    .local v1, "result":Lui/home/AppsListActivity$ActivityResult;
    if-eqz v1, :cond_0

    .line 247
    iget v2, v1, Lui/home/AppsListActivity$ActivityResult;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lui/HomeActivity;->startCapture(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lui/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f050000

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 45
    const v2, 0x7f03001e

    invoke-virtual {p0, v2}, Lui/HomeActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lui/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lui/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 53
    :cond_1
    sget-object v2, Lui/Stat;->Companion:Lui/Stat$Companion;

    invoke-virtual {p0}, Lui/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "this.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lui/Stat$Companion;->getInstance(Landroid/content/Context;)Lui/Stat;

    move-result-object v1

    .line 54
    .local v1, "stat":Lui/Stat;
    invoke-virtual {v1}, Lui/Stat;->isFirstLaunch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v1}, Lui/Stat;->setFirstLaunchDate()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lui/WalkThroughActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v2, Lui/HomeActivity$onCreate$1;

    invoke-direct {v2, p0}, Lui/HomeActivity$onCreate$1;-><init>(Lui/HomeActivity;)V

    check-cast v2, Landroid/os/Handler;

    iput-object v2, p0, Lui/HomeActivity;->handler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lui/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 73
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0d0000

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 74
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const v3, 0x7f0b00b0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 75
    .local v1, "start1Icon":Landroid/view/MenuItem;
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v3, 0x7f0b00b1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    .local v2, "startIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->getInstance()Lapp/greyshirts/firewall/proxy/ProxyWorker;

    move-result-object v3

    invoke-virtual {v3}, Lapp/greyshirts/firewall/proxy/ProxyWorker;->isRunning()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lui/HomeActivity;->forceShowAsRunning:Z

    if-eqz v3, :cond_3

    .line 77
    :cond_2
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 88
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 80
    :cond_3
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 92
    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .end local p0    # "this":Lui/HomeActivity;
    :goto_0
    return v6

    .line 94
    .restart local p0    # "this":Lui/HomeActivity;
    :pswitch_0
    invoke-direct {p0, v8}, Lui/HomeActivity;->handleStartButton(Z)V

    move v6, v8

    .line 95
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 99
    .local v4, "runButton":Z
    if-eqz v4, :cond_2

    .line 100
    invoke-direct {p0, v7}, Lui/HomeActivity;->handleStartButton(Z)V

    :goto_2
    move v6, v8

    .line 106
    goto :goto_0

    .line 98
    .end local v4    # "runButton":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 102
    .restart local v4    # "runButton":Z
    :cond_2
    invoke-virtual {p0}, Lui/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v6

    const-string v9, "UI stop button pressed"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v7}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v3, Landroid/content/Intent;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-class v7, Lapp/greyshirts/firewall/app/MyVpnService;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "cmd"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v3}, Lui/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 110
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "runButton":Z
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-class v7, Lui/SettingsActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v6, v8

    .line 112
    goto :goto_0

    .line 115
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    const-class v7, Lui/WalkThroughActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    move v6, v8

    .line 117
    goto :goto_0

    .line 120
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_4
    sget-object v6, Lui/Stat;->Companion:Lui/Stat$Companion;

    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lui/HomeActivity;
    invoke-virtual {v6, p0}, Lui/Stat$Companion;->getInstance(Landroid/content/Context;)Lui/Stat;

    move-result-object v5

    .line 121
    .local v5, "stat":Lui/Stat;
    invoke-virtual {v5}, Lui/Stat;->clearFirstLaunchDate()V

    move v6, v8

    .line 122
    goto :goto_0

    .line 125
    .end local v5    # "stat":Lui/Stat;
    .restart local p0    # "this":Lui/HomeActivity;
    :pswitch_5
    new-instance v0, Ljava/io/File;

    const-string v6, "/proc/self/fd"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "files":[Ljava/io/File;
    move v6, v7

    .line 127
    :goto_3
    array-length v7, v2

    if-ge v6, v7, :cond_3

    aget-object v1, v2, v6

    .line 128
    .local v1, "file":Ljava/io/File;
    const-string v7, "PC"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 130
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const-string v6, "PC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "num fds="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v2, [Ljava/lang/Object;

    .end local v2    # "files":[Ljava/io/File;
    array-length v9, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 131
    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x7f0b00b0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 195
    iget-object v0, p0, Lui/HomeActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 190
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lui/HomeActivity;->rescheduleButtonUpdate(I)V

    .line 191
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "permissions"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "grantResults"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget v2, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ONE:I

    if-ne p1, v2, :cond_2

    .line 157
    :cond_0
    array-length v2, p3

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    aget v2, p3, v0

    if-nez v2, :cond_5

    .line 158
    iget v2, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ONE:I

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lui/HomeActivity;->handleStartButton(Z)V

    .line 166
    .end local p0    # "this":Lui/HomeActivity;
    :goto_2
    return-void

    .line 156
    .restart local p0    # "this":Lui/HomeActivity;
    :cond_2
    iget v2, p0, Lui/HomeActivity;->REQ_PERMISSION_WRITE_STORAGE_ALL:I

    if-eq p1, v2, :cond_0

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2

    :cond_3
    move v2, v0

    .line 157
    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    .line 160
    :cond_5
    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lui/HomeActivity;
    const-string v0, "Cannot write to storage"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public final setupVpn()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    nop

    .line 206
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 211
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_0

    move-object v5, p0

    .line 214
    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v5

    const-string v6, "VpnService.prepare() returned null intent. It\'s ready to start"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, p0

    .line 215
    check-cast v5, Landroid/content/Context;

    const v6, 0x7f060046

    invoke-virtual {p0, v6}, Lui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    move-object v1, p0

    .line 216
    check-cast v1, Lui/HomeActivity;

    .line 217
    .local v1, "$receiver":Lui/HomeActivity;
    new-instance v4, Landroid/content/Intent;

    move-object v5, v1

    check-cast v5, Landroid/content/Context;

    const-class v6, Lapp/greyshirts/firewall/app/MyVpnService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v4, "intent2":Landroid/content/Intent;
    const-string v5, "cmd"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {v1, v4}, Lui/HomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 230
    .end local v1    # "$receiver":Lui/HomeActivity;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "intent2":Landroid/content/Intent;
    .end local p0    # "this":Lui/HomeActivity;
    :goto_0
    return-void

    .line 207
    .restart local p0    # "this":Lui/HomeActivity;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    move-object v5, p0

    .line 208
    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v5

    const-string v6, "VpnService.prepare() threw NPE"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lui/HomeActivity;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot prepare VPN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lui/HomeActivity;
    :cond_0
    sget-object v5, Lui/HomeActivity;->Companion:Lui/HomeActivity$Companion;

    invoke-static {v5}, Lui/HomeActivity$Companion;->access$getTAG$p(Lui/HomeActivity$Companion;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    nop

    .line 225
    :try_start_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v5

    const-string v6, "VpnService.prepare() returned intent. Ask user\'s permission"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget v5, p0, Lui/HomeActivity;->REQ_VPN_PERMISSION:I

    invoke-virtual {p0, v3, v5}, Lui/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/ActivityNotFoundException;
    move-object v5, p0

    .line 228
    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->getInstance(Landroid/content/Context;)Lapp/greyshirts/firewall/app/debuglog/PersistentLog;

    move-result-object v5

    const-string v6, "Cannot start VPN accept Activity."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lapp/greyshirts/firewall/app/debuglog/PersistentLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, p0

    .line 229
    check-cast v5, Landroid/content/Context;

    const v6, 0x7f060047

    invoke-virtual {p0, v6}, Lui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
