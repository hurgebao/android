.class public final Lcapt/V1Writer;
.super Ljava/lang/Object;
.source "V1Writer.kt"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final FLAG_DIR_APP2SERVER:I

.field private final FLAG_DIR_SERVER2APP:I

.field private final FLAG_HAS_PRETTY:I

.field private final header$delegate:Lkotlin/properties/ReadWriteProperty;

.field private headerPos:I

.field private mode:Lcapt/Mode;

.field private pos:I

.field private final prettyW$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rawW$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final w:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcapt/V1Writer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "header"

    const-string v5, "getHeader()Lcapt/V1WriteHeader;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcapt/V1Writer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "rawW"

    const-string v5, "getRawW()Lcapt/TextSplitWriter;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v3, Lcapt/V1Writer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "prettyW"

    const-string v5, "getPrettyW()Lcapt/TextSplitWriter;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "w"    # Ljava/io/RandomAccessFile;

    .prologue
    const-string v0, "w"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Lcapt/V1Writer;->FLAG_DIR_SERVER2APP:I

    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcapt/V1Writer;->FLAG_HAS_PRETTY:I

    .line 54
    sget-object v0, Lcapt/Mode;->MODE_NORMAL:Lcapt/Mode;

    iput-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 57
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcapt/V1Writer;->header$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 58
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcapt/V1Writer;->rawW$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 59
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcapt/V1Writer;->prettyW$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method public final begin(Z)V
    .locals 3
    .param p1, "isServer2App"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v1, Lcapt/Mode;->MODE_NORMAL:Lcapt/Mode;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 66
    :cond_0
    sget-object v0, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    iput-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 67
    new-instance v0, Lcapt/TextSplitWriter;

    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1}, Lcapt/TextSplitWriter;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, v0}, Lcapt/V1Writer;->setRawW(Lcapt/TextSplitWriter;)V

    .line 68
    new-instance v0, Lcapt/TextSplitWriter;

    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1}, Lcapt/TextSplitWriter;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {p0, v0}, Lcapt/V1Writer;->setPrettyW(Lcapt/TextSplitWriter;)V

    .line 69
    new-instance v0, Lcapt/V1WriteHeader;

    invoke-direct {v0}, Lcapt/V1WriteHeader;-><init>()V

    invoke-virtual {p0, v0}, Lcapt/V1Writer;->setHeader(Lcapt/V1WriteHeader;)V

    .line 70
    iget v0, p0, Lcapt/V1Writer;->pos:I

    iput v0, p0, Lcapt/V1Writer;->headerPos:I

    .line 71
    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget v1, p0, Lcapt/V1Writer;->FLAG_DIR_SERVER2APP:I

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->setFlag(I)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->write(Ljava/io/RandomAccessFile;)V

    .line 77
    iget v0, p0, Lcapt/V1Writer;->pos:I

    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/V1WriteHeader;->getHEADER_SIZE()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcapt/V1Writer;->pos:I

    .line 78
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget v1, p0, Lcapt/V1Writer;->FLAG_DIR_APP2SERVER:I

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->setFlag(I)V

    goto :goto_0
.end method

.method public final end()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 169
    :cond_0
    sget-object v0, Lcapt/Mode;->MODE_NORMAL:Lcapt/Mode;

    iput-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 170
    iget-object v0, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcapt/V1Writer;->headerPos:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->write(Ljava/io/RandomAccessFile;)V

    .line 172
    iget-object v0, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcapt/V1Writer;->pos:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    return-void
.end method

.method public final getHeader()Lcapt/V1WriteHeader;
    .locals 3

    .prologue
    iget-object v0, p0, Lcapt/V1Writer;->header$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcapt/V1WriteHeader;

    return-object v0
.end method

.method public final getPrettyW()Lcapt/TextSplitWriter;
    .locals 3

    .prologue
    iget-object v0, p0, Lcapt/V1Writer;->prettyW$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcapt/TextSplitWriter;

    return-object v0
.end method

.method public final getRawW()Lcapt/TextSplitWriter;
    .locals 3

    .prologue
    iget-object v0, p0, Lcapt/V1Writer;->rawW$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcapt/TextSplitWriter;

    return-object v0
.end method

.method public final setHeader(Lcapt/V1WriteHeader;)V
    .locals 3
    .param p1, "<set-?>"    # Lcapt/V1WriteHeader;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcapt/V1Writer;->header$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPrettyW(Lcapt/TextSplitWriter;)V
    .locals 3
    .param p1, "<set-?>"    # Lcapt/TextSplitWriter;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcapt/V1Writer;->prettyW$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRawW(Lcapt/TextSplitWriter;)V
    .locals 3
    .param p1, "<set-?>"    # Lcapt/TextSplitWriter;

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcapt/V1Writer;->rawW$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcapt/V1Writer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v1, Lcapt/V1Writer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcapt/Mode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 144
    :pswitch_0
    invoke-virtual {p0, p1}, Lcapt/V1Writer;->writeRawData([B)V

    .line 152
    :goto_0
    return-void

    .line 147
    :pswitch_1
    invoke-virtual {p0, p1}, Lcapt/V1Writer;->writePrettyData([B)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final writePrettyData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcapt/V1Writer;->getPrettyW()Lcapt/TextSplitWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcapt/TextSplitWriter;->write([B)V

    .line 162
    iget v0, p0, Lcapt/V1Writer;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcapt/V1Writer;->pos:I

    .line 163
    return-void
.end method

.method public final writePrettyDataBegin(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 114
    :cond_0
    sget-object v0, Lcapt/Mode;->MODE_PRETTY:Lcapt/Mode;

    iput-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 115
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/V1WriteHeader;->getFlag()I

    move-result v1

    iget v2, p0, Lcapt/V1Writer;->FLAG_HAS_PRETTY:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->setFlag(I)V

    .line 116
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcapt/V1WriteHeader;->setPrettyLabel(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget v1, p0, Lcapt/V1Writer;->pos:I

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->setPrettyOffset(I)V

    .line 118
    return-void
.end method

.method public final writePrettyDataEnd()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v2, Lcapt/Mode;->MODE_PRETTY:Lcapt/Mode;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid mode"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 124
    :cond_0
    sget-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    iput-object v1, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 125
    invoke-virtual {p0}, Lcapt/V1Writer;->getPrettyW()Lcapt/TextSplitWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/TextSplitWriter;->flush()V

    .line 126
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    iget v2, p0, Lcapt/V1Writer;->pos:I

    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcapt/V1WriteHeader;->getPrettyOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcapt/V1WriteHeader;->setPrettySize(I)V

    .line 127
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    invoke-virtual {p0}, Lcapt/V1Writer;->getPrettyW()Lcapt/TextSplitWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/TextSplitWriter;->getSplitSize()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcapt/V1WriteHeader;->setPrettyBlocks(I)V

    .line 129
    :goto_0
    iget v1, p0, Lcapt/V1Writer;->pos:I

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 131
    iget v1, p0, Lcapt/V1Writer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcapt/V1Writer;->pos:I

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcapt/V1Writer;->getPrettyW()Lcapt/TextSplitWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/TextSplitWriter;->getSplitSize()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, "ssize":Ljava/lang/Integer;
    iget-object v2, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    const-string v3, "ssize"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 136
    iget v2, p0, Lcapt/V1Writer;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcapt/V1Writer;->pos:I

    goto :goto_1

    .line 138
    .end local v0    # "ssize":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public final writeRawData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcapt/V1Writer;->getRawW()Lcapt/TextSplitWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcapt/TextSplitWriter;->write([B)V

    .line 157
    iget v0, p0, Lcapt/V1Writer;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcapt/V1Writer;->pos:I

    .line 158
    return-void
.end method

.method public final writeRawDataBegin(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 84
    :cond_0
    sget-object v0, Lcapt/Mode;->MODE_RAW:Lcapt/Mode;

    iput-object v0, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 85
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcapt/V1WriteHeader;->setContentType(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v0

    iget v1, p0, Lcapt/V1Writer;->pos:I

    invoke-virtual {v0, v1}, Lcapt/V1WriteHeader;->setRawFileOffset(I)V

    .line 87
    return-void
.end method

.method public final writeRawDataEnd()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    sget-object v2, Lcapt/Mode;->MODE_RAW:Lcapt/Mode;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid mode"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 93
    :cond_0
    sget-object v1, Lcapt/Mode;->MODE_BEGIN:Lcapt/Mode;

    iput-object v1, p0, Lcapt/V1Writer;->mode:Lcapt/Mode;

    .line 94
    invoke-virtual {p0}, Lcapt/V1Writer;->getRawW()Lcapt/TextSplitWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/TextSplitWriter;->flush()V

    .line 95
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    iget v2, p0, Lcapt/V1Writer;->pos:I

    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcapt/V1WriteHeader;->getRawFileOffset()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcapt/V1WriteHeader;->setRawDataSize(I)V

    .line 96
    invoke-virtual {p0}, Lcapt/V1Writer;->getHeader()Lcapt/V1WriteHeader;

    move-result-object v1

    invoke-virtual {p0}, Lcapt/V1Writer;->getRawW()Lcapt/TextSplitWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcapt/TextSplitWriter;->getSplitSize()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcapt/V1WriteHeader;->setTextBlocks(I)V

    .line 98
    :goto_0
    iget v1, p0, Lcapt/V1Writer;->pos:I

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 100
    iget v1, p0, Lcapt/V1Writer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcapt/V1Writer;->pos:I

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcapt/V1Writer;->getRawW()Lcapt/TextSplitWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcapt/TextSplitWriter;->getSplitSize()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "ssize":Ljava/lang/Integer;
    iget-object v2, p0, Lcapt/V1Writer;->w:Ljava/io/RandomAccessFile;

    const-string v3, "ssize"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcapt/V1WriterKt;->writeIntLittle(Ljava/io/RandomAccessFile;I)V

    .line 105
    iget v2, p0, Lcapt/V1Writer;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcapt/V1Writer;->pos:I

    goto :goto_1

    .line 108
    .end local v0    # "ssize":Ljava/lang/Integer;
    :cond_2
    return-void
.end method
