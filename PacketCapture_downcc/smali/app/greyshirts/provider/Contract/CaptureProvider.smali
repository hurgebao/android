.class public final Lapp/greyshirts/provider/Contract/CaptureProvider;
.super Landroid/content/ContentProvider;
.source "CaptureProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final CAPTURE:I = 0x64

# The value of this static final field might be set in the static constructor
.field private static final CAPTURESET:I = 0x67

# The value of this static final field might be set in the static constructor
.field private static final CAPTURESET_ID:I = 0x68

# The value of this static final field might be set in the static constructor
.field private static final CAPTURE_ID:I = 0x66

# The value of this static final field might be set in the static constructor
.field private static final CAPTURE_SET_ID:I = 0x65

.field public static final Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

.field private static final captureSetProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final accessLimitSem:Ljava/util/concurrent/Semaphore;

.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    .line 22
    const/16 v0, 0x64

    sput v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE:I

    .line 23
    const/16 v0, 0x65

    sput v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE_SET_ID:I

    .line 24
    const/16 v0, 0x66

    sput v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE_ID:I

    .line 25
    const/16 v0, 0x67

    sput v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURESET:I

    .line 26
    const/16 v0, 0x68

    sput v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURESET_ID:I

    .line 27
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->buildProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->captureSetProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->accessLimitSem:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public static final synthetic access$getCAPTURE$cp()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE:I

    return v0
.end method

.method public static final synthetic access$getCAPTURESET$cp()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURESET:I

    return v0
.end method

.method public static final synthetic access$getCAPTURESET_ID$cp()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURESET_ID:I

    return v0
.end method

.method public static final synthetic access$getCAPTURE_ID$cp()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE_ID:I

    return v0
.end method

.method public static final synthetic access$getCAPTURE_SET_ID$cp()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->CAPTURE_SET_ID:I

    return v0
.end method

.method public static final synthetic access$getCaptureSetProjectionMap$cp()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->captureSetProjectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$getUriMatcher$cp()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const-string v3, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 159
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v6}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 161
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    .line 292
    new-array v4, v6, [Ljava/lang/String;

    .line 293
    .local v4, "result$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 161
    sget-object v7, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_FILE_NAME:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 162
    .local v14, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    sget-object v3, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_FILE_NAME:Ljava/lang/String;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 165
    const-string v3, "SSL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "result$iv":[Ljava/lang/Object;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "openHelper null"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 167
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "result$iv":[Ljava/lang/Object;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_2
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 170
    .local v17, "ret":I
    invoke-virtual/range {p0 .. p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 241
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return v17

    .line 174
    .end local v4    # "result$iv":[Ljava/lang/Object;
    .end local v17    # "ret":I
    :cond_4
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v6}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_SET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 175
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "delete not supported"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 187
    :cond_5
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v6}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v6

    if-ne v3, v6, :cond_6

    .line 188
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "delete not supported"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 200
    :cond_6
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v6}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v6

    if-ne v3, v6, :cond_9

    .line 203
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 204
    .local v5, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 205
    const/4 v3, 0x1

    .line 297
    new-array v4, v3, [Ljava/lang/String;

    .line 298
    .restart local v4    # "result$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 206
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    aput-object v6, v4, v3

    .line 205
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    move-object v7, v4

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 208
    .restart local v14    # "c":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v18, "setIds":Ljava/util/ArrayList;
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 211
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_8
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 217
    .restart local v17    # "ret":I
    invoke-virtual/range {p0 .. p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 220
    const-string v3, "SSL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "num setIds to remove "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 222
    .local v16, "id":Ljava/lang/String;
    const-string v3, "SSL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v7, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "=?"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    .line 302
    new-array v4, v3, [Ljava/lang/String;

    .line 303
    const/4 v3, 0x0

    .line 223
    const-string v9, "id"

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v16, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4}, Lapp/greyshirts/provider/Contract/CaptureProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 228
    .end local v4    # "result$iv":[Ljava/lang/Object;
    .end local v5    # "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "ret":I
    .end local v18    # "setIds":Ljava/util/ArrayList;
    :cond_9
    sget-object v6, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v6}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v6

    if-ne v3, v6, :cond_c

    .line 229
    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    .line 230
    :cond_a
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v6, "selection not supported"

    invoke-direct {v3, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 232
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    .line 235
    .restart local v16    # "id":Ljava/lang/String;
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 236
    .restart local v17    # "ret":I
    invoke-virtual/range {p0 .. p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 239
    sget-object v6, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    .line 308
    new-array v4, v3, [Ljava/lang/String;

    .line 309
    .restart local v4    # "result$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 239
    const-string v8, "id"

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v16, v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lapp/greyshirts/provider/Contract/CaptureProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    .end local v4    # "result$iv":[Ljava/lang/Object;
    .end local v16    # "id":Ljava/lang/String;
    .end local v17    # "ret":I
    :cond_c
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v0}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 112
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 113
    sget-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_TYPE:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    .line 114
    :cond_0
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_SET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 115
    sget-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_1
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 117
    sget-object v0, Lapp/greyshirts/provider/Contract/Capture;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_2
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 119
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_3
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 121
    sget-object v0, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-string v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    nop

    .line 130
    :try_start_0
    iget-object v1, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->accessLimitSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 132
    iget-object v1, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v1}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 135
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 136
    sget-object v1, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v1}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 137
    .local v2, "id":J
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 138
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 139
    sget-object v1, Lapp/greyshirts/provider/Contract/Capture;->INSTANCE:Lapp/greyshirts/provider/Contract/Capture;

    invoke-virtual {v1, v2, v3}, Lapp/greyshirts/provider/Contract/Capture;->buildCaptureUri(J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 150
    iget-object v4, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->accessLimitSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .end local v2    # "id":J
    :goto_0
    return-object v1

    .line 132
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "openHelper null"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->accessLimitSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1

    .line 141
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 142
    sget-object v1, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v1}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 144
    sget-object v1, Lapp/greyshirts/provider/Contract/CaptureSet;->INSTANCE:Lapp/greyshirts/provider/Contract/CaptureSet;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "values!!.getAsString(CaptureSet.CAPTURE_SET_ID)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lapp/greyshirts/provider/Contract/CaptureSet;->buildCaptureSetUri(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 150
    iget-object v4, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->accessLimitSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 147
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lapp/greyshirts/provider/Contract/CaptureDatabase;

    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lapp/greyshirts/provider/Contract/CaptureDatabase;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v0, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const-string v2, "uri"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 62
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 63
    sget-object v2, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 64
    .local v11, "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 65
    const-string v2, "ret"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v11

    .line 59
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "ret":Landroid/database/Cursor;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "openHelper null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 67
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_SET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 68
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 69
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "selection not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "setId":Ljava/lang/String;
    sget-object v2, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 73
    .restart local v11    # "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 74
    const-string v2, "ret"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v11    # "ret":Landroid/database/Cursor;
    .end local v12    # "setId":Ljava/lang/String;
    :cond_4
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 77
    if-nez p3, :cond_5

    if-eqz p4, :cond_6

    .line 78
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "selection not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 80
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "id":Ljava/lang/String;
    sget-object v2, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 82
    .restart local v11    # "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 83
    const-string v2, "ret"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "ret":Landroid/database/Cursor;
    :cond_7
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 86
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 87
    .local v1, "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 88
    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCaptureSetProjectionMap()Ljava/util/HashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 89
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 90
    .restart local v11    # "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 91
    const-string v2, "ret"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v1    # "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11    # "ret":Landroid/database/Cursor;
    :cond_8
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 94
    if-nez p3, :cond_9

    if-eqz p4, :cond_a

    .line 95
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "selection not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 97
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 98
    .restart local v10    # "id":Ljava/lang/String;
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 99
    .restart local v1    # "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v2}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getCaptureSetProjectionMap()Ljava/util/HashMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 102
    .restart local v11    # "ret":Landroid/database/Cursor;
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 103
    const-string v2, "ret"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    .end local v1    # "builder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "ret":Landroid/database/Cursor;
    :cond_b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v3, "uri"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lapp/greyshirts/provider/Contract/CaptureProvider;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->getUriMatcher()Landroid/content/UriMatcher;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 252
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 253
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "ret":I
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 280
    :goto_0
    return v2

    .line 249
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "ret":I
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "openHelper null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 258
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURE_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 259
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 260
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "selection not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 262
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "id":Ljava/lang/String;
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURE()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lapp/greyshirts/provider/Contract/Capture;->CAPTURE_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-virtual {v0, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 264
    .restart local v2    # "ret":I
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 265
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureSet;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 268
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "ret":I
    :cond_4
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 269
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 270
    .restart local v2    # "ret":I
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 273
    .end local v2    # "ret":I
    :cond_5
    sget-object v4, Lapp/greyshirts/provider/Contract/CaptureProvider;->Companion:Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;

    invoke-static {v4}, Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;->access$getCAPTURESET_ID$p(Lapp/greyshirts/provider/Contract/CaptureProvider$Companion;)I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 274
    if-nez p3, :cond_6

    if-eqz p4, :cond_7

    .line 275
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "selection not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 277
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 278
    .restart local v1    # "id":Ljava/lang/String;
    sget-object v3, Lapp/greyshirts/provider/Contract/Tables;->INSTANCE:Lapp/greyshirts/provider/Contract/Tables;

    invoke-virtual {v3}, Lapp/greyshirts/provider/Contract/Tables;->getCAPTURESET()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lapp/greyshirts/provider/Contract/CaptureSet;->CAPTURE_SET_ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-virtual {v0, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 279
    .restart local v2    # "ret":I
    invoke-virtual {p0}, Lapp/greyshirts/provider/Contract/CaptureProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 283
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "ret":I
    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
