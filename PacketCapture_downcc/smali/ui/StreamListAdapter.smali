.class public final Lui/StreamListAdapter;
.super Landroid/widget/CursorAdapter;
.source "StreamListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/StreamListAdapter$Tag;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lui/StreamListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lui/StreamListAdapter;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const-string v2, "view"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "c"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    new-instance v2, Lkotlin/TypeCastException;

    const-string v12, "null cannot be cast to non-null type ui.StreamListAdapter.Tag"

    invoke-direct {v2, v12}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    check-cast v11, Lui/StreamListAdapter$Tag;

    .line 139
    .local v11, "tag":Lui/StreamListAdapter$Tag;
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SERVER_IP:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "ip":Ljava/lang/String;
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SERVER_PORT:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 141
    .local v6, "port":I
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROTOCOL_NO:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 142
    .local v5, "protocol":I
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROXY_TYPE:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 143
    .local v10, "proxyType":I
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PKG_NAME_ALL:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "pkgs":Ljava/lang/String;
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_FILE_NAME:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "fileName":Ljava/lang/String;
    sget-object v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_APP_NAME_ALL:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lui/StreamListAdapter$Tag;->setAppName(Ljava/lang/String;)V

    .line 146
    new-instance v2, Lui/decode/DecodeArg;

    const-string v12, "fileName"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "ip"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {v2 .. v7}, Lui/decode/DecodeArg;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v11, v2}, Lui/StreamListAdapter$Tag;->setDecodeArg(Lui/decode/DecodeArg;)V

    .line 152
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewName()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getAppName()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewIp()Landroid/widget/TextView;

    move-result-object v12

    move-object v2, v7

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewPort()Landroid/widget/TextView;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewProtNo()Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lui/StreamListAdapter;->getProtNoStr(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v4}, Lapp/greyshirts/firewall/app/PackageNames;->newInstanceFromCommaList(Ljava/lang/String;)Lapp/greyshirts/firewall/app/PackageNames;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lapp/greyshirts/firewall/app/PackageNames;->getAt(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lapp/greyshirts/firewall/app/AppInfo;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewTime()Landroid/widget/TextView;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lui/StreamListAdapter;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    sget-object v14, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_TIME:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewProxyType()Landroid/widget/TextView;

    move-result-object v12

    sget v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROXY_TYPE_NORMAL:I

    if-ne v10, v2, :cond_2

    const-string v2, ""

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_4

    .line 167
    :cond_1
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewFileSize()Landroid/widget/TextView;

    move-result-object v12

    const-string v2, "\u6ca1\u6709\u6570\u636e"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_1
    invoke-static {}, Lapp/greyshirts/firewall/cache/DnsCache;->getInstance()Lapp/greyshirts/firewall/cache/DnsCache;

    move-result-object v12

    new-instance v2, Lui/StreamListAdapter$bindView$cache$1;

    invoke-direct {v2, v11}, Lui/StreamListAdapter$bindView$cache$1;-><init>(Lui/StreamListAdapter$Tag;)V

    check-cast v2, Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;

    invoke-virtual {v12, v7, v2}, Lapp/greyshirts/firewall/cache/DnsCache;->resolveNameFromIpForUiThread(Ljava/lang/String;Lapp/greyshirts/firewall/cache/DnsCache$ResolveNameResult;)Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;

    move-result-object v8

    .line 181
    .local v8, "cache":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    if-eqz v8, :cond_5

    iget-object v2, v8, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->hostname:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 182
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewHostName()Landroid/widget/TextView;

    move-result-object v12

    iget-object v2, v8, Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;->hostname:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_2
    return-void

    .line 158
    .end local v8    # "cache":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    .end local v9    # "file":Ljava/io/File;
    :cond_2
    sget v2, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_PROXY_TYPE_SSL:I

    if-ne v10, v2, :cond_3

    const-string v2, "SSL"

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_0

    .line 169
    .restart local v9    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewFileSize()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    .restart local v8    # "cache":Lapp/greyshirts/firewall/cache/AddressCache$AddressCacheEntry;
    :cond_5
    invoke-virtual {v11}, Lui/StreamListAdapter$Tag;->getViewHostName()Landroid/widget/TextView;

    move-result-object v12

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public final getProtNoStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "protNo"    # I

    .prologue
    .line 189
    sparse-switch p1, :sswitch_data_0

    .line 192
    const-string v0, "???"

    .line 189
    :goto_0
    return-object v0

    .line 190
    :sswitch_0
    const-string v0, "TCP"

    goto :goto_0

    .line 191
    :sswitch_1
    const-string v0, "UDP"

    goto :goto_0

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cursor"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parent"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lui/StreamListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 119
    .local v10, "v":Landroid/view/View;
    new-instance v0, Lui/StreamListAdapter$Tag;

    const v1, 0x7f0b004d

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "v.findViewById(R.id.icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0089

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "v.findViewById(R.id.name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b008b

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "v.findViewById(R.id.ip)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b008c

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "v.findViewById(R.id.port)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b008f

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "v.findViewById(R.id.hostName)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0b008a

    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "v.findViewById(R.id.time)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0b008d

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "v.findViewById(R.id.protNo)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0b0090

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "v.findViewById(R.id.status)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0b008e

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v11, "v.findViewById(R.id.fileSize)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/TextView;

    invoke-direct/range {v0 .. v9}, Lui/StreamListAdapter$Tag;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 130
    .local v0, "tag":Lui/StreamListAdapter$Tag;
    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    const-string v1, "v"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v10
.end method
