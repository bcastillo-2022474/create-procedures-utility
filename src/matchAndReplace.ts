export const matchAndReplace = (text: string, regex: string | RegExp, remove: string, replaceWith = "" ) => {
    return text.match(regex)?.map(str => str.replaceAll(remove, replaceWith));
}