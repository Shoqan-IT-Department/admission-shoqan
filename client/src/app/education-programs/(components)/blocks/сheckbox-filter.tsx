import React from "react";
import {Checkbox} from "@/shared/ui/checkbox";
import {Button} from "@/shared/ui/button";

type GraduateCheckboxesProps = {
    selected: string[];
    onChange: (selected: string[]) => void;
};

const graduateLevels = ["Бакалавриат", "Магистратура", "Аспирантура", "Докторантура"];

const GraduateCheckboxes: React.FC<GraduateCheckboxesProps> = ({ selected, onChange }) => {
    const handleChange = (graduate: string) => {
        const newSelected = selected.includes(graduate)
            ? selected.filter(g => g !== graduate)
            : [...selected, graduate];
        onChange(newSelected);
    };

    const handleReset = () => {
        onChange([]);
    };


    return (
            <aside className="bg-card rounded-4xl w-100 mr-2">
                {graduateLevels.map((graduate,key) => (
                    <div key={key} className="border-b rounded- xl select-none cursor-default leading-none font-semibold text-2xs">
                        <div className="flex justify-between p-10">
                            <div>{graduate}</div>
                            <div>
                                <input
                                type="checkbox"
                                checked={selected.includes(graduate)}
                                onChange={() => handleChange(graduate)}
                            />
                            </div>
                        </div>

                    </div>
                ))}

                <div className='flex justify-center items-center p-6'>
                    <Button
                        onClick={handleReset}
                        className="mt-2 px-4 py-1 w-max bg-popover hover:bg-muted rounded-xl"
                    >
                        Сбросить всё
                    </Button>
                </div>
            </aside>

    );
};

export default GraduateCheckboxes;