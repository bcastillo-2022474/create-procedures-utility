import { Entity } from "./types";
import { createProps } from "./createProps";
import { matchAndReplace } from "./matchAndReplace";

export const createEntitiesModels = (sql: string) => {
  return sql.split("}\n\n").map((entityString): Entity => {
    // find the table name betwwen the double quotes and remove it from the string
    const [title] = matchAndReplace(entityString, /".*"/g, '"') as [string];
    const newEntityString = entityString.replace(`"${title}"`, "");

    // set the props
    const props = createProps(newEntityString);
    return { title, props };
  });
};
